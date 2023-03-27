import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';

import 'UI/widgets/not_model.dart';

import 'dart:math' as math;

import 'app.dart';

Future<void> _firebaseMessagingBackgroundHandler(RemoteMessage message) async {
  await Firebase.initializeApp();
  if (kDebugMode) {
    print("Handling a background message ${message.messageId}");
  }
}

selectNotification(payload) {
  NotificationModel notificationModel =
      NotificationModel.fromJsonString(payload);
}

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  await Future.delayed(const Duration(milliseconds: 300));

  FirebaseMessaging.onBackgroundMessage(_firebaseMessagingBackgroundHandler);
  await flutterLocalNotificationsPlugin
      .resolvePlatformSpecificImplementation<
          AndroidFlutterLocalNotificationsPlugin>()
      ?.createNotificationChannel(channel);

  await FirebaseMessaging.instance.setForegroundNotificationPresentationOptions(
    alert: true,
    badge: true,
    sound: true,
  );
  runApp(
    ModularApp(
      module: AppModule(),
      child: const ProviderScope(child: App()),
    ),
  );
}

const AndroidNotificationChannel channel = AndroidNotificationChannel(
    'high_importance_channel', // id
    'High Importance Notifications', // title
    description: "This is description",
    importance: Importance.high,
    playSound: true);
final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
    FlutterLocalNotificationsPlugin();

class App extends StatefulWidget {
  const App({Key? key}) : super(key: key);

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  final FirebaseMessaging _messaging = FirebaseMessaging.instance;
  FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
      FlutterLocalNotificationsPlugin();

  NotificationSettings? settings;

  getMessaging() async {
    settings = await _messaging.requestPermission(
        alert: true,
        announcement: false,
        badge: true,
        carPlay: false,
        criticalAlert: false,
        provisional: false,
        sound: true);
  }

  AndroidNotificationChannel channel = const AndroidNotificationChannel(
      'high_importance_channel', // id
      'High Importance Notifications', // title

      importance: Importance.high,
      playSound: true);

  // late FirebaseMessaging messaging;

  @override
  void initState() {
    super.initState();
    showNotificationsInApp();
    // subscribeTopic();
    FirebaseMessaging.onMessage.listen((event) async {
      AndroidNotificationDetails? androidPlatformChannelSpecifics;
      androidPlatformChannelSpecifics = const AndroidNotificationDetails(
        'your channel id',
        'channel name',
        importance: Importance.max,
        priority: Priority.high,
      );
      // DarwinNotificationDetails? iosDetails;
      // iosDetails = const DarwinNotificationDetails(
      //   presentAlert: true,
      //   presentBadge: true,
      //   presentSound: true,
      // );

      NotificationDetails platformChannelSpecifics = NotificationDetails(
        android: androidPlatformChannelSpecifics,
        // iOS: iosDetails
      );
      final notification = NotificationModel(
        event.notification!.title!,
        event.notification!.body!,
      );
      String notificationJsonString = notification.toJsonString();
      await flutterLocalNotificationsPlugin.show(
        math.Random().nextInt(120000),
        event.notification!.title!,
        event.notification!.body!,
        platformChannelSpecifics,
        // payload: notificationJsonString,
      );
    });
    // FirebaseMessaging.onMessageOpenedApp.listen((event) {
    //   final notification = NotificationModel(
    //     event.notification!.title!,
    //     event.notification!.body!,
    //   );
    // });
  }

  void showNotificationsInApp() async {
    const AndroidInitializationSettings initializationSettingsAndroid =
        AndroidInitializationSettings('mipmap/ic_launcher');
    // const DarwinInitializationSettings initializationSettingsIOS =
    //     DarwinInitializationSettings();
    const InitializationSettings initializationSettings =
        InitializationSettings(
      android: initializationSettingsAndroid,
      // iOS: initializationSettingsIOS,
    );
    // await flutterLocalNotificationsPlugin.initialize(initializationSettings);
    await flutterLocalNotificationsPlugin.initialize(
      initializationSettings,
      onDidReceiveBackgroundNotificationResponse: selectNotification,
      onDidReceiveNotificationResponse: selectNotification,
    );
  }

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(360, 800),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) {
          return GestureDetector(
            // this will remove keyword when clicked outside
            onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
            child: MaterialApp.router(
              theme: ThemeData(
                primarySwatch: Colors.orange,
              ),
              title: 'Flutter Demo',
              debugShowCheckedModeBanner: false,
              routeInformationParser: Modular.routeInformationParser,
              routerDelegate: Modular.routerDelegate,
            ),
          );
        });
  }
}
