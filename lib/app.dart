import 'package:flutter_modular/flutter_modular.dart';

import 'UI/screens/home_page.dart';
import 'UI/screens/photos_page.dart';
import 'UI/screens/shimmer_page.dart';
import 'UI/screens/second_page.dart';
import 'UI/screens/tween_page.dart';

class AppModule extends Module {
  // @override
  // List<Bind> get binds => [];
  @override
  List<ModularRoute> get routes => [
        ChildRoute(
          '/',
          child: (context, args) => const HomePage(),
          transition: TransitionType.fadeIn,
          duration: const Duration(milliseconds: 600),
        ),
        ChildRoute(
          '/second',
          child: (context, args) => const SecondPage(),
          transition: TransitionType.fadeIn,
          duration: const Duration(milliseconds: 600),
        ),
        ChildRoute(
          '/third',
          child: (context, args) => const ThirdPage(),
          transition: TransitionType.fadeIn,
          duration: const Duration(milliseconds: 600),
        ),
        ChildRoute(
          '/photos',
          child: (context, args) => const HomePagee(),
          transition: TransitionType.fadeIn,
          duration: const Duration(milliseconds: 600),
        ),
        ChildRoute(
          '/tween',
          child: (context, args) => const TweenPage(),
          transition: TransitionType.fadeIn,
          duration: const Duration(milliseconds: 600),
        ),
      ];
}
