import 'dart:math';

import 'package:flutter/material.dart';

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
        vsync: this, duration: const Duration(milliseconds: 3000));

    _animation =
        Tween<double>(begin: 0, end: 100).animate(_animationController!)
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
      appBar: AppBar(title: const Text('Loading page')),
      body: Center(
        child: CustomPaint(
          foregroundPainter: Loading(_animation!.value),
          child: Center(
            child: Text(_animation!.value.toInt().toString()),
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
    Paint arc = Paint()
      ..strokeWidth = 20
      ..color = Colors.red
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round;
    Offset center = Offset(size.width / 2, size.height / 2);

    double angle = 2 * pi * (value / 100);
    double radius = 50;

    Paint circle = Paint()
      ..strokeWidth = 15
      ..color = Colors.black
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
