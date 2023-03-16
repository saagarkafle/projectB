import 'package:flutter/material.dart';

class ShapePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint();
    final path = Path();
    paint.style = PaintingStyle.stroke;
    paint.strokeWidth = 45;
    paint.color = Colors.blueAccent;
    path.moveTo(0, size.height * 0.8);
    path.quadraticBezierTo(
      size.width * 0.1,
      size.height * 0.78,
      size.width * 0.3,
      size.height * 0.89,
    );
    path.quadraticBezierTo(
      size.width * 0.45,
      size.height * 0.95,
      size.width * 0.6,
      size.height * 0.85,
    );
    path.quadraticBezierTo(
      size.width * 0.75,
      size.height * 0.75,
      size.width * 0.85,
      size.height * 0.7,
    );
    path.quadraticBezierTo(
      size.width * 0.95,
      size.height * 0.65,
      size.width * 1,
      size.height * 0.68,
    );
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);
    path.lineTo(0, size.height * 0.8);
    canvas.drawPath(path, paint);
    final paint1 = Paint();
    paint1.style = PaintingStyle.fill;
    paint1.color = Colors.yellow;
    canvas.drawPath(path, paint1);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    return true;
  }
}
