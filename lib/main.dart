// import 'package:firebase_core/firebase_core.dart';
// import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'app.dart';
// Future<void> _firebaseMessagingBackgroundHandler(RemoteMessage message) async {
//   await Firebase.initializeApp();
//   if (kDebugMode) {
//     print('Handling a background message ${message.messageId}');
//   }
// }

void main() {
// Future<void> main() async {
//   WidgetsFlutterBinding.ensureInitialized();
//   await Firebase.initializeApp();
//   // await FirebaseMessaging.instance.getInitialMessage();
//    FirebaseMessaging.onBackgroundMessage(_firebaseMessagingBackgroundHandler);
//   await flutterLocalNotificationsPlugin
//       .resolvePlatformSpecificImplementation<
//           AndroidFlutterLocalNotificationsPlugin>()
//       ?.createNotificationChannel(channel);

//   await FirebaseMessaging.instance.setForegroundNotificationPresentationOptions(
//     alert: true,
//     badge: true,
//     sound: true,
//   );

  runApp(
    ModularApp(
      module: AppModule(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

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
