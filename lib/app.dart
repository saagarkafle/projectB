import 'package:flutter_modular/flutter_modular.dart';
import 'package:whatsapp/UI/screens/date_range_page.dart';
import 'package:whatsapp/UI/screens/hero_second.dart';
import 'package:whatsapp/UI/screens/nav_bar/nav_bar.dart';

import 'UI/screens/accordian.dart';
import 'UI/screens/animated_icon.dart';
import 'UI/screens/cp2page.dart';
import 'UI/screens/hero_animation.dart';
import 'UI/screens/home_page.dart';
import 'UI/screens/loading.dart';
import 'UI/screens/music_player/music_home.dart';
import 'UI/screens/photos_page.dart';
import 'UI/screens/shimmer_page.dart';
import 'UI/screens/custom_paint.dart';
import 'UI/screens/stretchy_header.dart';
import 'UI/screens/test_page.dart';
import 'UI/screens/filp_card.dart';
import 'UI/screens/tween_page.dart';

class AppModule extends Module {
  // @override
  // List<Bind> get binds => [];
  @override
  List<ModularRoute> get routes => [
        ChildRoute('/',
            child: (context, args) => const HomePage(),
            transition: TransitionType.fadeIn,
            duration: const Duration(milliseconds: 600)),
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
        ChildRoute('/photos',
            child: (context, args) => const HomePagee(),
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
        ChildRoute('/hero',
            child: (context, args) => const HeroAnimation(),
            transition: TransitionType.fadeIn,
            duration: const Duration(milliseconds: 600)),
        ChildRoute('/heroSecond',
            child: (context, args) => const HeroSecond(),
            transition: TransitionType.fadeIn,
            duration: const Duration(milliseconds: 600)),
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
      ];
}
