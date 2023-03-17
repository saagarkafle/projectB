import 'package:flutter/material.dart';

class MoonPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final moonPaint = Paint();
    final moonPath = Path();
    moonPaint.style = PaintingStyle.stroke;
    moonPaint.strokeWidth = 4;
    // moonPaint.color = const Color.fromARGB(77, 0, 8, 248);
    moonPath.moveTo(0, size.height * 0.8);
    moonPath.quadraticBezierTo(
      size.width * 0.1,
      size.height * 0.7,
      size.width * 0.2,
      size.height * 0.8,
    );
    moonPath.quadraticBezierTo(
      size.width * 0.1,
      size.height * 0.75,
      size.width * 0.01,
      size.height * 0.8,
    );
    final paint1 = Paint();
    paint1.style = PaintingStyle.fill;
    paint1.color = const Color.fromARGB(77, 0, 8, 248);
    canvas.drawPath(moonPath, paint1);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
