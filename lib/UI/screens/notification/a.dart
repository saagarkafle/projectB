import 'package:flutter/material.dart';

import '../../../main.dart';

class Apage extends StatefulWidget {
  const Apage({super.key, required this.title});
  final String title;

  @override
  State<Apage> createState() => _ApageState();
}

class _ApageState extends State<Apage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const <Widget>[
            Text(
              'Push the buttons below to create new notifications',
            ),
          ],
        ),
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(width: 20),
            FloatingActionButton(
              heroTag: '1',
              onPressed: () => NotificationController.createNewNotification(),
              tooltip: 'Create New notification',
              child: const Icon(Icons.outgoing_mail),
            ),
            const SizedBox(width: 10),
            FloatingActionButton(
              heroTag: '2',
              onPressed: () => NotificationController.scheduleNewNotification(),
              tooltip: 'Schedule New notification',
              child: const Icon(Icons.access_time_outlined),
            ),
            const SizedBox(width: 10),
            FloatingActionButton(
              heroTag: '3',
              onPressed: () => NotificationController.resetBadgeCounter(),
              tooltip: 'Reset badge counter',
              child: const Icon(Icons.exposure_zero),
            ),
            const SizedBox(width: 10),
            FloatingActionButton(
              heroTag: '4',
              onPressed: () => NotificationController.cancelNotifications(),
              tooltip: 'Cancel all notifications',
              child: const Icon(Icons.delete_forever),
            ),
          ],
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
