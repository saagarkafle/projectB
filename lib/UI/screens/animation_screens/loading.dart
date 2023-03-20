import 'dart:math';

import 'package:flutter/material.dart';
import 'package:whatsapp/constants/colours.dart';

class LoadingPage extends StatefulWidget {
  const LoadingPage({super.key});

  @override
  State<LoadingPage> createState() => _LoadingPageState();
}

class _LoadingPageState extends State<LoadingPage>
    with SingleTickerProviderStateMixin {
  AnimationController? _animationController;
  Animation<double>? _animation;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 4000));

    _animation =
        Tween<double>(begin: 0, end: 145).animate(_animationController!)
          ..addListener(() {
            setState(() {});
          });
    _animationController!.forward();
  }

  @override
  void dispose() {
    if (_animationController != null) _animationController!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgColor,
      appBar: AppBar(
        title: const Text('Loading page'),
      ),
      body: Center(
        child: SizedBox(
          height: 120,
          width: 120,
          child: Center(
            child: CustomPaint(
              foregroundPainter: Loading(_animation!.value),
              // child: Center(
              //   child: Text(_animation!.value.toInt().toString()),
              // ),
            ),
          ),
        ),
      ),
    );
  }
}

class Loading extends CustomPainter {
  double value;
  Loading(this.value);
  @override
  void paint(Canvas canvas, Size size) {
    Offset center = Offset(size.width / 2, size.height / 2);

    double radius = 50;

    Paint arc = Paint()
      ..strokeWidth = 20
      ..shader = const LinearGradient(
        colors: [
          Color.fromARGB(255, 234, 234, 8),
          Color.fromARGB(255, 255, 0, 0),
        ],
      ).createShader(Rect.fromCircle(
        center: center,
        radius: radius,
      ))
      ..color = AppColors.blackColor
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round;

    double angle = 2 * pi * (value / 100);

    Paint circle = Paint()
      ..strokeWidth = 22
      ..color = const Color.fromARGB(255, 76, 191, 5)
      ..style = PaintingStyle.stroke;

    // Offset center = Offset(size.width / 2, size.height / 2);
    // double radius = 150;
    canvas.drawCircle(center, radius, circle);
    canvas.drawArc(Rect.fromCircle(center: center, radius: radius), pi / 2,
        angle, false, arc);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
