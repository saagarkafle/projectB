import 'package:flutter/material.dart';

class HalfCirclePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    // draw triangle
    final tri = Paint()
      ..color = Colors.black
      ..style = PaintingStyle.fill;

    // Draw gradient arc
    final arcPainter = Paint()
      ..strokeWidth = 8.0
      ..strokeCap = StrokeCap.round
      ..style = PaintingStyle.stroke
      ..shader = const LinearGradient(
        colors: [
          Colors.orange,
          Colors.purple,
          Colors.green,
          Colors.blue,
        ],
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
      ).createShader(Rect.fromCircle(
        center: Offset(size.width / 3, size.height / 2),
        radius: size.width / 2,
      ));
    // Draw blue white gradient
    final gradientPainter = Paint()
      ..style = PaintingStyle.fill
      ..shader = const LinearGradient(
        colors: [
          Colors.transparent,
          Color.fromARGB(255, 84, 166, 237),
        ],
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
      ).createShader(Rect.fromCircle(
        center: Offset(size.width / 3, size.height / 2),
        radius: size.width / 2,
      ));

    final center = Offset(size.width / 2, size.height / 2);
    final radius = size.width / 3;

    // Draw the outer black shadow
    final shadowPainter = Paint()
      ..color = Colors.black.withOpacity(0.5)
      ..maskFilter = const MaskFilter.blur(BlurStyle.outer, 10.0);

    // Draw the white circle
    final whitePainter = Paint()
      ..style = PaintingStyle.fill
      ..color = Colors.white;

    // Draw the black triangle
    var trianglePath = Path();
    trianglePath.moveTo(size.width / 2, size.height * 0.01);
    trianglePath.lineTo(size.width * 0.86, size.height / 5.44);
    trianglePath.lineTo(size.width / 1.4, size.height);
    trianglePath.close();

    final arcPath = Path()
      ..arcTo(
        Rect.fromCircle(
          center: Offset(size.width / 2, size.height / 2),
          radius: size.width / 2,
        ),
        2.8,
        3.04,
        false,
      );
    final gradientPath = Path()
      ..arcTo(
        Rect.fromCircle(
          center: Offset(size.width / 2, size.height / 2),
          radius: size.width / 2,
        ),
        -0.4,
        -3.14,
        false,
      );

    canvas.drawCircle(center, radius, shadowPainter);
    canvas.drawPath(gradientPath, gradientPainter);
    canvas.drawPath(arcPath, arcPainter);
    canvas.drawPath(trianglePath, tri);
    canvas.drawCircle(center, radius, whitePainter);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
