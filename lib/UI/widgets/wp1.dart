// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:developer';

import 'package:flutter/material.dart';

class WavePainterBg extends CustomPainter {
  WavePainterBg({
    required this.length,
    required this.sunColor,
  });
  final double length;
  final Color sunColor;

  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint()
      ..color = sunColor
      ..strokeWidth = 5
      ..style = PaintingStyle.fill
      ..strokeCap = StrokeCap.round;

    var paints = Paint()
      ..color = Colors.black
      ..strokeWidth = 5
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round;

    Offset center = Offset(size.width * 0.302, size.height * (1 - length));
    canvas.drawCircle(center, 30, paint);
    log(center.toString());
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
