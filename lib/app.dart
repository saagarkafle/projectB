import 'package:flutter_modular/flutter_modular.dart';
import 'package:whatsapp/UI/screens/date_range_page.dart';

import 'UI/screens/animated_icon.dart';
import 'UI/screens/cp2page.dart';
import 'UI/screens/home_page.dart';
import 'UI/screens/music_player/music_home.dart';
import 'UI/screens/photos_page.dart';
import 'UI/screens/shimmer_page.dart';
import 'UI/screens/custom_paint.dart';
import 'UI/screens/test_page.dart';
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
          child: (context, args) => const CustomPaintPage(),
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
        ChildRoute(
          '/animatedicon',
          child: (context, args) => const AnimatedIconPage(),
          transition: TransitionType.fadeIn,
          duration: const Duration(milliseconds: 600),
        ),
        ChildRoute(
          '/dateRange',
          child: (context, args) => const DateRangePicked(),
          transition: TransitionType.fadeIn,
          duration: const Duration(milliseconds: 600),
        ),
        ChildRoute(
          '/cp',
          child: (context, args) => const CustomPaintPage2(),
          transition: TransitionType.fadeIn,
          duration: const Duration(milliseconds: 600),
        ),
        ChildRoute(
          '/musicPlayer',
          child: (context, args) => const AllSongs(),
          transition: TransitionType.fadeIn,
          duration: const Duration(milliseconds: 600),
        ),
        ChildRoute(
          '/test',
          child: (context, args) => const TestPage(),
          transition: TransitionType.fadeIn,
          duration: const Duration(milliseconds: 600),
        ),
      ];
}
