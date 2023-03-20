import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../../constants/colours.dart';
import '../../../constants/screen_util.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<StatefulWidget> createState() => StartState();
}

class StartState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return initScreen(context);
  }

  @override
  void initState() {
    super.initState();
    startTimer();
  }

  startTimer() async {
    var duration = const Duration(seconds: 1);
    return Timer(duration, route);
  }

  route() {
    Modular.to.pushNamed('/home');
  }

  initScreen(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/splash.jpg'),
                fit: BoxFit.cover),
          ),
        ),
        Positioned(
          top: SizeConfig.screenHeight / 1.3,
          left: SizeConfig.screenWidth / 2.15,
          child: CircularProgressIndicator(
            backgroundColor: AppColors.blackColor,
            strokeWidth: 2,
            color: AppColors.whiteColor,
          ),
        )
        // Positioned(
        //     top: SizeConfig.screenHeight / 1.3,
        //     left: SizeConfig.screenWidth / 2.7,
        //     child: const SizedBox(
        //       height: 120,
        //       child: LoadingPage(),
        //     ))
      ],
    );
  }
}
