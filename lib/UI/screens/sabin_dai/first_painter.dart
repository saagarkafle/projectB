import 'package:flutter/material.dart';

class HalfCirclePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    // draw triangle
    final tri = Paint()
      ..color = const Color.fromARGB(255, 0, 0, 0)
      ..style = PaintingStyle.fill;

    final center = Offset(size.width / 2, size.height / 2);
    final radius = size.width / 3;

    // Draw the outer black shadow
    final shadowPainter = Paint()
      ..color = Colors.black.withOpacity(0.5)
      ..maskFilter = const MaskFilter.blur(BlurStyle.outer, 10.0);

    // Draw the white circle
    final whitePainter = Paint()
      ..style = PaintingStyle.fill
      ..color = const Color.fromARGB(255, 255, 255, 255);

    // Draw the black triangle
    var trianglePath = Path();
    trianglePath.moveTo(size.width / 1.4, size.height * 0.15);
    trianglePath.lineTo(size.width * 0.864, size.height / 5.35);
    trianglePath.lineTo(size.width / 1.25, size.height * 0.5);
    trianglePath.close();

    // final arcPath = Path()
    //   ..arcTo(
    //     Rect.fromCircle(
    //       center: Offset(size.width / 2, size.height / 2),
    //       radius: size.width / 2,
    //     ),
    //     2.8,
    //     3.04,
    //     false,
    //   );

    canvas.drawCircle(center, radius, shadowPainter);
    // canvas.drawPath(gradientPath, gradientPainter);
    canvas.drawPath(trianglePath, tri);
    canvas.drawCircle(center, radius, whitePainter);
    // canvas.drawPath(arcPath, arcPainter);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}

class GradientPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final gradientPainter = Paint()
      ..style = PaintingStyle.fill
      ..shader = const LinearGradient(
        colors: [
          Color(0xb2a9d3d6),
          Color(0x1792D7F5),
        ],
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
      ).createShader(Rect.fromCircle(
        center: Offset(size.width / 3, size.height / 2),
        radius: size.width / 2,
      ));

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

    canvas.drawPath(gradientPath, gradientPainter);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
