import 'package:flutter_modular/flutter_modular.dart';
import 'package:whatsapp/UI/screens/counter.dart';
import 'package:whatsapp/UI/screens/date_range_page.dart';
import 'package:whatsapp/UI/screens/main_screens/home_page.dart';
import 'package:whatsapp/UI/screens/nav_bar/nav_bar.dart';

import 'UI/screens/nav_bar/pages/buttom_navigtion.dart';
import 'UI/screens/test_page.dart';
import 'UI/screens/used_package_screens/accordian.dart';
import 'UI/screens/animation_screens/animated_icon.dart';
import 'UI/screens/used_package_screens/calculator.dart';
import 'UI/screens/custom_paint_screens/cp2page.dart';
import 'UI/screens/animation_screens/loading.dart';
import 'UI/screens/used_package_screens/maps.dart';
import 'UI/screens/music_player/music_home.dart';
import 'UI/screens/used_package_screens/shimmer_page.dart';
import 'UI/screens/custom_paint_screens/custom_paint.dart';
import 'UI/screens/main_screens/splash_screen.dart';
import 'UI/screens/stretchy_header.dart';
import 'UI/screens/notification.dart';
import 'UI/screens/animation_screens/filp_card_screen.dart';
import 'UI/screens/animation_screens/tween_page.dart';

class AppModule extends Module {
  // @override
  // List<Bind> get binds => [];
  @override
  List<ModularRoute> get routes => [
        ChildRoute('/',
            child: (context, args) => const SplashScreen(),
            transition: TransitionType.fadeIn,
            duration: const Duration(milliseconds: 600)),
        ChildRoute('/home',
            child: (context, args) => const HomePage(),
            transition: TransitionType.scale,
            duration: const Duration(milliseconds: 1600)),
        ChildRoute('/stretchyHeader',
            child: (context, args) => const StretchyHeader(),
            transition: TransitionType.fadeIn,
            duration: const Duration(milliseconds: 600)),
        ChildRoute('/second',
            child: (context, args) => const CustomPaintPage(),
            transition: TransitionType.fadeIn,
            duration: const Duration(milliseconds: 600)),
        ChildRoute('/third',
            child: (context, args) => const ThirdPage(),
            transition: TransitionType.fadeIn,
            duration: const Duration(milliseconds: 600)),
        ChildRoute('/tween',
            child: (context, args) => const TweenPage(),
            transition: TransitionType.fadeIn,
            duration: const Duration(milliseconds: 600)),
        ChildRoute('/animatedicon',
            child: (context, args) => const AnimatedIconPage(),
            transition: TransitionType.fadeIn,
            duration: const Duration(milliseconds: 600)),
        ChildRoute('/dateRange',
            child: (context, args) => const DateRangePicked(),
            transition: TransitionType.fadeIn,
            duration: const Duration(milliseconds: 600)),
        ChildRoute('/cp',
            child: (context, args) => const CustomPaintPage2(),
            transition: TransitionType.fadeIn,
            duration: const Duration(milliseconds: 600)),
        ChildRoute('/musicPlayer',
            child: (context, args) => const AllSongs(),
            transition: TransitionType.fadeIn,
            duration: const Duration(milliseconds: 600)),
        ChildRoute('/test',
            child: (context, args) => const TestPage(),
            transition: TransitionType.fadeIn,
            duration: const Duration(milliseconds: 600)),
        ChildRoute('/notification',
            child: (context, args) => const NotificationPage(),
            transition: TransitionType.fadeIn,
            duration: const Duration(milliseconds: 600)),
        // ChildRoute('/hero',
        //     child: (context, args) => const HeroAnimation(),
        //     transition: TransitionType.fadeIn,
        //     duration: const Duration(milliseconds: 600)),
        // ChildRoute('/heroSecond',
        //     child: (context, args) => const HeroSecond(),
        //     transition: TransitionType.fadeIn,
        //     duration: const Duration(milliseconds: 600)),
        ChildRoute('/accor',
            child: (context, args) => const AccordionPage(),
            transition: TransitionType.fadeIn,
            duration: const Duration(milliseconds: 600)),
        ChildRoute('/navBar',
            child: (context, args) => const NavBar(),
            transition: TransitionType.fadeIn,
            duration: const Duration(milliseconds: 600)),
        ChildRoute('/loading',
            child: (context, args) => const LoadingPage(),
            transition: TransitionType.fadeIn,
            duration: const Duration(milliseconds: 600)),
        ChildRoute('/flip',
            child: (context, args) => const FlipY(),
            transition: TransitionType.fadeIn,
            duration: const Duration(milliseconds: 600)),
        ChildRoute('/maps',
            child: (context, args) => const LocationTracker(),
            transition: TransitionType.fadeIn,
            duration: const Duration(milliseconds: 600)),
        ChildRoute('/calculator',
            child: (context, args) => const Calculator(),
            transition: TransitionType.fadeIn,
            duration: const Duration(milliseconds: 600)),
        ChildRoute('/counter',
            child: (context, args) => const Counter(title: 'Counter'),
            transition: TransitionType.fadeIn,
            duration: const Duration(milliseconds: 600)),
        ChildRoute('/newnav',
            child: (context, args) => const NaviagtionBar(),
            transition: TransitionType.fadeIn,
            duration: const Duration(milliseconds: 600)),
      ];
}
