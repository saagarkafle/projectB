// ignore_for_file: depend_on_referenced_packages, avoid_print

import 'package:awesome_notifications/awesome_notifications.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp/main.dart';
import 'package:http/http.dart' as http;

class NotificationController {
  static ReceivedAction? initialAction;
  static Future<void> initializeLocalNotifications() async {
    await AwesomeNotifications().initialize(
        null,
        [
          NotificationChannel(
              channelKey: 'alerts',
              channelName: 'Alerts',
              channelDescription: 'Notification tests as alerts',
              playSound: true,
              onlyAlertOnce: true,
              groupAlertBehavior: GroupAlertBehavior.Children,
              importance: NotificationImportance.High,
              defaultPrivacy: NotificationPrivacy.Private,
              defaultColor: Colors.deepPurple,
              
              ledColor: Colors.deepPurple)
        ],
        debug: true);

    initialAction = await AwesomeNotifications()
        .getInitialNotificationAction(removeFromActionEvents: false);
  }

  static Future<void> startListeningNotificationEvents() async {
    AwesomeNotifications()
        .setListeners(onActionReceivedMethod: onActionReceivedMethod);
  }

  @pragma('vm:entry-point')
  static Future<void> onActionReceivedMethod(
      ReceivedAction receivedAction) async {
    if (receivedAction.actionType == ActionType.SilentAction ||
        receivedAction.actionType == ActionType.SilentBackgroundAction) {
      print(
          'Message sent via notification input: "${receivedAction.buttonKeyInput}"');
      await executeLongTaskInBackground();
    } else {
      MyApp.navigatorKey.currentState?.pushNamedAndRemoveUntil(
          '/notification-page',
          (route) =>
              (route.settings.name != '/notification-page') || route.isFirst,
          arguments: receivedAction);
    }
  }

  static Future<bool> displayNotificationRationale() async {
    bool userAuthorized = false;
    BuildContext context = MyApp.navigatorKey.currentContext!;
    await showDialog(
        context: context,
        builder: (BuildContext ctx) {
          return AlertDialog(
            title: Text('Get Notified!',
                style: Theme.of(context).textTheme.titleLarge),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Image.asset(
                        'assets/animated-bell.gif',
                        height: MediaQuery.of(context).size.height * 0.3,
                        fit: BoxFit.fitWidth,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                const Text(
                    'Allow Awesome Notifications to send you beautiful notifications!'),
              ],
            ),
            actions: [
              TextButton(
                  onPressed: () {
                    Navigator.of(ctx).pop();
                  },
                  child: Text(
                    'Deny',
                    style: Theme.of(context)
                        .textTheme
                        .titleLarge
                        ?.copyWith(color: Colors.red),
                  )),
              TextButton(
                  onPressed: () async {
                    userAuthorized = true;
                    Navigator.of(ctx).pop();
                  },
                  child: Text(
                    'Allow',
                    style: Theme.of(context)
                        .textTheme
                        .titleLarge
                        ?.copyWith(color: Colors.deepPurple),
                  )),
            ],
          );
        });
    return userAuthorized &&
        await AwesomeNotifications().requestPermissionToSendNotifications();
  }

  static Future<void> executeLongTaskInBackground() async {
    print("starting long task");
    await Future.delayed(const Duration(seconds: 4));
    final url = Uri.parse("http://google.com");
    final re = await http.get(url);
    print(re.body);
    print("long task done");
  }

  static Future<void> createNewNotification() async {
    bool isAllowed = await AwesomeNotifications().isNotificationAllowed();
    if (!isAllowed) isAllowed = await displayNotificationRationale();
    if (!isAllowed) return;

    await AwesomeNotifications().createNotification(
        content: NotificationContent(
          id: -1,
          channelKey: 'alerts',
          title: 'Sagar Kafle ',
          roundedLargeIcon: true,
          actionType: ActionType.KeepOnTop,
          body: "Hello notificatoin aayo?",
          bigPicture:
              'https://img.freepik.com/free-vector/push-notifications-concept-illustration_114360-4730.jpg?w=740&t=st=1688626203~exp=1688626803~hmac=8f0963801fe13347bd666fd6eed659de29ef509a1670214ab18bf6c2e21b61a3',
          largeIcon:
              'https://img.freepik.com/free-vector/push-notifications-concept-illustration_114360-4730.jpg?w=740&t=st=1688626203~exp=1688626803~hmac=8f0963801fe13347bd666fd6eed659de29ef509a1670214ab18bf6c2e21b61a3',
          notificationLayout: NotificationLayout.BigPicture,
          payload: {'notificationId': '1234567890'},
        ),
        actionButtons: [
          NotificationActionButton(key: 'REDIRECT', label: 'Redirect'),
          NotificationActionButton(
            key: 'REPLY',
            label: 'Reply',
            requireInputText: true,
            // this is the color of reply message button
            color: Colors.orange,
            actionType: ActionType.SilentAction,
            enabled: true,
          ),
          NotificationActionButton(
            key: 'DISMISS',
            label: 'Dismiss',
            // this is the color of redirect button
            color: Colors.orange,
            actionType: ActionType.DismissAction,
            isDangerousOption: true,
          )
        ]);
  }

  static Future<void> scheduleNewNotification() async {
    bool isAllowed = await AwesomeNotifications().isNotificationAllowed();
    if (!isAllowed) isAllowed = await displayNotificationRationale();
    if (!isAllowed) return;

    await AwesomeNotifications().createNotification(
        content: NotificationContent(
            id: -1,
            channelKey: 'alerts',
            title: 'Sagar Kafle ',
            roundedLargeIcon: true,
            actionType: ActionType.KeepOnTop,
            body: "Hello notificatoin aayo?",
            bigPicture:
                'https://img.freepik.com/free-vector/push-notifications-concept-illustration_114360-4730.jpg?w=740&t=st=1688626203~exp=1688626803~hmac=8f0963801fe13347bd666fd6eed659de29ef509a1670214ab18bf6c2e21b61a3',
            largeIcon: 'https://img.freepik.com/free-vector/push-notifications-concept-illustration_114360-4730.jpg?w=740&t=st=1688626203~exp=1688626803~hmac=8f0963801fe13347bd666fd6eed659de29ef509a1670214ab18bf6c2e21b61a3',
            payload: {
              'notificationId': '1234567890'
            }),
        actionButtons: [
          NotificationActionButton(key: 'REDIRECT', label: 'Redirect'),
          NotificationActionButton(
              key: 'DISMISS',
              label: 'Dismiss',
              actionType: ActionType.DismissAction,
              isDangerousOption: true)
        ],
        schedule: NotificationCalendar.fromDate(
            date: DateTime.now().add(const Duration(seconds: 10))));
  }

  static Future<void> resetBadgeCounter() async {
    await AwesomeNotifications().resetGlobalBadge();
  }

  static Future<void> cancelNotifications() async {
    await AwesomeNotifications().cancelAll();
  }
}
