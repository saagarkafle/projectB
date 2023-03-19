// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class MoonPainter extends CustomPainter {
  MoonPainter({
    required this.moonHeight,
  });
  double moonHeight;

  @override
  void paint(Canvas canvas, Size size) {
    final moonPaint = Paint();
    final moonPath = Path();
    moonPaint.style = PaintingStyle.stroke;
    moonPaint.strokeWidth = 4;

    // moonPaint.color = const Color.fromARGB(77, 0, 8, 248);
    moonPath.moveTo(size.width * 0.2, size.height * (1 - moonHeight + 0.8));
    moonPath.quadraticBezierTo(
      size.width * 0.3,
      size.height * (1 - moonHeight + 0.7),
      size.width * 0.4,
      size.height * (1 - moonHeight + 0.8),
    );
    moonPath.quadraticBezierTo(
      size.width * 0.3,
      size.height * (1 - moonHeight + 0.75),
      size.width * 0.21,
      size.height * (1 - moonHeight + 0.8),
    );
    final paint1 = Paint();
    paint1.style = PaintingStyle.fill;
    paint1.color = Colors.white;
    canvas.drawPath(moonPath, paint1);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
