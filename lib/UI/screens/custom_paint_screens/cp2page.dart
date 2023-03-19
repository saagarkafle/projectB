import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:whatsapp/UI/screens/custom_paint_screens/widgets/moon_widget.dart';

import '../../../constants/colours.dart';
import 'widgets/sun_widget.dart';
import 'widgets/wave_widget.dart';

class CustomPaintPage2 extends StatefulWidget {
  const CustomPaintPage2({super.key});

  @override
  State<CustomPaintPage2> createState() => _CustomPaintPage2State();
}

class _CustomPaintPage2State extends State<CustomPaintPage2>
    with TickerProviderStateMixin {
  late AnimationController _sunMoveAnimationController;
  late Animation<double> _sunMoveAnimation;
  late Animation<double> _moonAnimation;
  late Animation sunColorAnimation;
  late Animation darkColorAnimation;
  late Animation lightColorAnimation;
  late AnimationController sunAnimationController;
  late AnimationController darkAnimationController;
  late AnimationController moonAnimationController;

  @override
  void initState() {
    super.initState();
    sunAnimationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 2));
    darkAnimationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 1));
    sunColorAnimation =
        ColorTween(begin: AppColors.orangeColor, end: Colors.red)
            .animate(sunAnimationController);
    darkColorAnimation = ColorTween(begin: Colors.grey, end: Colors.black)
        .animate(darkAnimationController);
    lightColorAnimation = ColorTween(begin: Colors.black, end: Colors.grey)
        .animate(darkAnimationController);
    _sunMoveAnimationController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 3000));
    moonAnimationController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 3000));
    _sunMoveAnimation = Tween<double>(begin: 0.0, end: 1.05)
        .animate(_sunMoveAnimationController)
      ..addListener(() {
        log(sunAnimationController.value.toString(), name: 'oooo');
        setState(() {});
      });
    _moonAnimation =
        Tween<double>(begin: 0.9, end: 1.8).animate(moonAnimationController)
          ..addListener(() {
            setState(() {});
          });

    sunAnimationController
        .forward()
        .then((value) => darkAnimationController.forward());

    _sunMoveAnimationController.addStatusListener((status) {
      if (_sunMoveAnimationController.isCompleted) {
        moonAnimationController.reset();
        moonAnimationController.forward();
      }
    });
    moonAnimationController.addStatusListener((status) {
      if (moonAnimationController.isCompleted) {
        _sunMoveAnimation = Tween<double>(begin: 0.0, end: 1.05)
            .animate(_sunMoveAnimationController)
          ..addListener(() {
            log(sunAnimationController.value.toString(), name: 'oooo');
            setState(() {});
          });
        darkAnimationController.reset();
        sunAnimationController.reset();
        sunAnimationController
            .forward()
            .then((value) => darkAnimationController.forward());
        _sunMoveAnimationController.reset();
        _sunMoveAnimationController.forward();
      }
    });
    _sunMoveAnimationController.forward();
    // .then((value) => _animationController!.reverse());
    // _animationController!.reverse();
  }

  @override
  void dispose() {
    _sunMoveAnimationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    log(sunColorAnimation.value.toString(), name: 'sas');

    return Scaffold(
      backgroundColor: sunAnimationController.value == 1.0
          ? darkColorAnimation.value
          : AppColors.whiteColor,
      appBar: AppBar(
        title: const Text('Custom Painter 2'),
      ),
      body: (_sunMoveAnimationController.isCompleted)
          ? CustomPaint(
              painter: MoonPainter(
                  moonHeight:
                      _moonAnimation.value != 1.8 ? _moonAnimation.value : 0.9),
              foregroundPainter: WavePainter(),
              child: Container(),
            )
          : CustomPaint(
              painter: WavePainterBg(
                  length: _sunMoveAnimation.value,
                  sunColor: sunColorAnimation.value),
              // CustomClip(),
              foregroundPainter: WavePainter(),
              child: Container(),
            ),
    );
  }
}
