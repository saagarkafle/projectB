import 'dart:developer';

import 'package:flutter/material.dart';

import '../../constants/colours.dart';
import '../widgets/wp.dart';
import '../widgets/wp1.dart';

class CustomPaintPage2 extends StatefulWidget {
  const CustomPaintPage2({super.key});

  @override
  State<CustomPaintPage2> createState() => _CustomPaintPage2State();
}

class _CustomPaintPage2State extends State<CustomPaintPage2>
    with TickerProviderStateMixin {
  AnimationController? _animationController;
  Animation<double>? _animation;
  late Animation colorAnimation;
  late Animation colorAnimation2;
  late AnimationController animationController;
  late AnimationController animationController2;

  @override
  void initState() {
    super.initState();
    animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 2));
    animationController2 =
        AnimationController(vsync: this, duration: const Duration(seconds: 1));
    colorAnimation = ColorTween(begin: AppColors.orangeColor, end: Colors.red)
        .animate(animationController);
    colorAnimation2 = ColorTween(begin: Colors.grey, end: Colors.black)
        .animate(animationController2);
    _animationController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 3000));
    _animation =
        Tween<double>(begin: 0.0, end: 1.05).animate(_animationController!)
          ..addListener(() {
            log(animationController.value.toString(), name: 'oooo');
            setState(() {});
          });
    animationController
        .forward()
        .then((value) => animationController2.forward());
    _animationController!.forward();
    // .then((value) => _animationController!.reverse());
    // _animationController!.reverse();
  }

  @override
  void dispose() {
    if (_animationController != null) _animationController!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    log(colorAnimation.value.toString(), name: 'sas');

    return Scaffold(
      backgroundColor: animationController.value == 1.0
          ? colorAnimation2.value
          : AppColors.whiteColor,
      appBar: AppBar(
        title: const Text('Custom Painter 2'),
      ),
      body: CustomPaint(
        painter: WavePainterBg(
            length: _animation!.value, sunColor: colorAnimation.value),
        // CustomClip(),
        foregroundPainter: WavePainter(),
        child: Container(),
      ),
    );
  }
}
