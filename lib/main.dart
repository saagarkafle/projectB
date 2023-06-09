import 'package:flutter/material.dart';
// import 'package:flutter/foundation.dart';
// import 'package:firebase_core/firebase_core.dart';
// import 'package:flutter_modular/flutter_modular.dart';
// import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:awesome_notifications/awesome_notifications.dart';

import 'UI/screens/notification/a.dart';
import 'UI/screens/notification/b.dart';
import 'UI/screens/notification/services/notification_service.dart';

// // import 'package:khalti_flutter/khalti_flutter.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:firebase_messaging/firebase_messaging.dart';
// import 'package:flutter_local_notifications/flutter_local_notifications.dart';

// import 'UI/screens/theme/typo.dart';
// import 'models/notification_model.dart';
// import 'UI/screens/theme/theme_colors.dart';
// import 'UI/screens/theme/theme_provider.dart';

// import 'app.dart';

// const String testPublicKey = 'test_public_key_dc74e0fd57cb46cd93832aee0a507256';
// GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

// Future<void> _firebaseMessagingBackgroundHandler(RemoteMessage message) async {
//   await Firebase.initializeApp();

//   if (kDebugMode) {
//     print("Handling a background message ${message.messageId}");
//   }
// }

// selectNotification(payload) {
//   NotificationModel notificationModel =
//       NotificationModel.fromJsonString(payload);
// }

// Future<void> main() async {
//   WidgetsFlutterBinding.ensureInitialized();
// await NotificationController.initializeLocalNotifications();
//   await Firebase.initializeApp();
//   await Future.delayed(const Duration(milliseconds: 300));

//   FirebaseMessaging.onBackgroundMessage(_firebaseMessagingBackgroundHandler);
//   await flutterLocalNotificationsPlugin
//       .resolvePlatformSpecificImplementation<
//           AndroidFlutterLocalNotificationsPlugin>()
//       ?.createNotificationChannel(channel);

//   await FirebaseMessaging.instance.setForegroundNotificationPresentationOptions(
//     alert: true,
//     badge: true,
//     sound: true,
//   );
//   runApp(ModularApp(
//     module: AppModule(),
//     child: const ProviderScope(
//       child:
//           //  DevicePreview(
//           //   enabled: !kReleaseMode,
//           //   builder: (context) =>
//           App(), // Wrap your app
//       // ),
//     ),
//   ));
// }

// const AndroidNotificationChannel channel = AndroidNotificationChannel(
//     'high_importance_channel', // id
//     'High Importance Notifications', // title
//     description: "This is description",
//     importance: Importance.high,
//     playSound: true);
// final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
//     FlutterLocalNotificationsPlugin();

// class App extends ConsumerStatefulWidget {
//   const App({Key? key}) : super(key: key);

//   @override
//   ConsumerState<App> createState() => _AppState();
// }

// class _AppState extends ConsumerState<App> {
// static const String routeHome = '/', routeNotification = '/notification-page';

// @override
// void initState() {
//   NotificationController.startListeningNotificationEvents();
//   super.initState();
// }

//   @override
//   Widget build(
//     BuildContext context,
//   ) {
//     final themeMode = ref.watch(themeModeProvider);
//     return ScreenUtilInit(
//         designSize: const Size(360, 800),
//         minTextAdapt: true,
//         splitScreenMode: true,
//         builder: (context, child) {
//           // return KhaltiScope(
//           //     publicKey: testPublicKey,
//           //     enabledDebugging: true,
//           //     // navigatorKey: navigatorKey,
//           //     builder: (_, navKey) {
//           return MaterialApp.router(
//             // navigatorKey: navKey,
//             supportedLocales: const [
//               Locale('en', 'US'),
//               Locale('ne', 'NP'),
//             ],
//             // this is used for default theme mode
//             // darkTheme: ThemeClass.darkTheme,
//             // theme: ThemeClass.lightTheme,
//             // localizationsDelegates: const [
//             //   KhaltiLocalizations.delegate,
//             // ],
//             theme: ThemeData(
//               useMaterial3: true,
//               colorScheme: lightColorScheme,
//               textTheme: textTheme,
//             ),
//             darkTheme: ThemeData(
//               useMaterial3: true,
//               colorScheme: darkColorScheme,
//               textTheme: textTheme,
//             ),
//             // home: const SplashScreen(),
//             themeMode: themeMode,
//             title: 'Flutter Demo',
//             debugShowCheckedModeBanner: false,
//             routeInformationParser: Modular.routeInformationParser,
//             routerDelegate: Modular.routerDelegate,
//           );
//         }
//         // );
//         // }
//         );
//   }
// }

Future<void> main() async {
  await NotificationController.initializeLocalNotifications();
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  static final GlobalKey<NavigatorState> navigatorKey =
      GlobalKey<NavigatorState>();

  static Color mainColor = const Color(0xFF9D50DD);

  @override
  State<MyApp> createState() => _AppState();
}

class _AppState extends State<MyApp> {
  static const String routeHome = '/', routeNotification = '/notification-page';

  @override
  void initState() {
    NotificationController.startListeningNotificationEvents();
    super.initState();
  }

  List<Route<dynamic>> onGenerateInitialRoutes(String initialRouteName) {
    List<Route<dynamic>> pageStack = [];
    pageStack.add(MaterialPageRoute(
        builder: (_) =>
            const Apage(title: 'Awesome Notifications Example App')));
    if (initialRouteName == routeNotification &&
        NotificationController.initialAction != null) {
      pageStack.add(MaterialPageRoute(
          builder: (_) => NotificationPage(
              receivedAction: NotificationController.initialAction!)));
    }
    return pageStack;
  }

  Route<dynamic>? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case routeHome:
        return MaterialPageRoute(
            builder: (_) =>
                const Apage(title: 'Awesome Notifications Example App'));

      case routeNotification:
        ReceivedAction receivedAction = settings.arguments as ReceivedAction;
        return MaterialPageRoute(
            builder: (_) => NotificationPage(receivedAction: receivedAction));
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Awesome Notifications - Simple Example',
      navigatorKey: MyApp.navigatorKey,
      onGenerateInitialRoutes: onGenerateInitialRoutes,
      onGenerateRoute: onGenerateRoute,
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
    );
  }
}
