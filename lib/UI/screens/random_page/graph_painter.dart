import 'package:flutter/material.dart';

class GraphPainter extends CustomPainter {
  final int value;
  GraphPainter(this.value);
  @override
  void paint(Canvas canvas, Size size) {
    final dashLinePainter = Paint()
      ..color = Colors.grey
      ..strokeWidth = 1.0
      ..style = PaintingStyle.stroke;

    final gradientPainter = Paint()
      ..style = PaintingStyle.fill
      ..shader = const LinearGradient(
        colors: [
          Color.fromARGB(255, 199, 199, 219),
          Colors.white,
        ],
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
      ).createShader(Rect.fromPoints(
          Offset(size.width * 0.28, size.height * 0.3),
          Offset(size.width * 0.28, size.height * 0.6)));
    final gradientPainter2 = Paint()
      ..style = PaintingStyle.fill
      ..shader = const LinearGradient(
        colors: [
          Color.fromARGB(255, 212, 200, 195),
          Color.fromARGB(255, 255, 255, 255),
        ],
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
      ).createShader(Rect.fromPoints(
          Offset(size.width * 0.28, size.height * 0.3),
          Offset(size.width * 0.28, size.height * 0.6)));

    final firstLinePainter = Paint()
      ..color = Colors.blue
      ..strokeWidth = 5.0
      ..strokeCap = StrokeCap.round
      ..style = PaintingStyle.stroke;
    final secondLinePainter = Paint()
      ..color = Colors.orange
      ..strokeWidth = 5.0
      ..strokeCap = StrokeCap.round
      ..style = PaintingStyle.stroke;

    var firstLinePath = Path();
    firstLinePath.moveTo(size.width * 0, size.height * 0.3);
    firstLinePath.lineTo(size.width * 0.28, size.height * 0.3);

    //
    var dashedLinePath = Path();
    var gradientPath = Path();
    gradientPath.moveTo(size.width * 0, size.height * 0.3);
    gradientPath.lineTo(size.width * 0.28, size.height * 0.3);
    gradientPath.lineTo(size.width * 0.28, size.height * 0.6);
    gradientPath.lineTo(size.width * 0.0, size.height * 0.6);
    gradientPath.close();

    var gradientPath2 = Path();
    gradientPath2.moveTo(size.width * 0.28, size.height * 0.3);
    gradientPath2.lineTo(size.width * 0.63, size.height * 0.2);
    gradientPath2.lineTo(size.width * 0.65, size.height * 0.5);
    gradientPath2.lineTo(size.width * 0.3, size.height * 0.55);
    gradientPath2.close();

    dashedLinePath.moveTo(size.width * 0, 0);
    dashedLinePath.lineTo(size.width * 0.07, 0);
    dashedLinePath.moveTo(size.width * 0.14, 0);
    dashedLinePath.lineTo(size.width * 0.21, 0);
    dashedLinePath.moveTo(size.width * 0.28, 0);
    dashedLinePath.lineTo(size.width * 0.35, 0);
    dashedLinePath.moveTo(size.width * 0.42, 0);
    dashedLinePath.lineTo(size.width * 0.49, 0);
    dashedLinePath.moveTo(size.width * 0.56, 0);
    dashedLinePath.lineTo(size.width * 0.63, 0);
    dashedLinePath.moveTo(size.width * 0.70, 0);
    dashedLinePath.lineTo(size.width * 0.77, 0);
    dashedLinePath.moveTo(size.width * 0.84, 0);
    dashedLinePath.lineTo(size.width * 0.91, 0);
    //
    dashedLinePath.moveTo(size.width * 0, size.height * 0.3);
    dashedLinePath.lineTo(size.width * 0.07, size.height * 0.3);
    dashedLinePath.moveTo(size.width * 0.14, size.height * 0.3);
    dashedLinePath.lineTo(size.width * 0.21, size.height * 0.3);
    dashedLinePath.moveTo(size.width * 0.28, size.height * 0.3);
    dashedLinePath.lineTo(size.width * 0.35, size.height * 0.3);
    dashedLinePath.moveTo(size.width * 0.42, size.height * 0.3);
    dashedLinePath.lineTo(size.width * 0.49, size.height * 0.3);
    dashedLinePath.moveTo(size.width * 0.56, size.height * 0.3);
    dashedLinePath.lineTo(size.width * 0.63, size.height * 0.3);
    dashedLinePath.moveTo(size.width * 0.70, size.height * 0.3);
    dashedLinePath.lineTo(size.width * 0.77, size.height * 0.3);
    dashedLinePath.moveTo(size.width * 0.84, size.height * 0.3);
    dashedLinePath.lineTo(size.width * 0.91, size.height * 0.3);
    //
    dashedLinePath.moveTo(size.width * 0, size.height * 0.6);
    dashedLinePath.lineTo(size.width * 0.07, size.height * 0.6);
    dashedLinePath.moveTo(size.width * 0.14, size.height * 0.6);
    dashedLinePath.lineTo(size.width * 0.21, size.height * 0.6);
    dashedLinePath.moveTo(size.width * 0.28, size.height * 0.6);
    dashedLinePath.lineTo(size.width * 0.35, size.height * 0.6);
    dashedLinePath.moveTo(size.width * 0.42, size.height * 0.6);
    dashedLinePath.lineTo(size.width * 0.49, size.height * 0.6);
    dashedLinePath.moveTo(size.width * 0.56, size.height * 0.6);
    dashedLinePath.lineTo(size.width * 0.63, size.height * 0.6);
    dashedLinePath.moveTo(size.width * 0.70, size.height * 0.6);
    dashedLinePath.lineTo(size.width * 0.77, size.height * 0.6);
    dashedLinePath.moveTo(size.width * 0.84, size.height * 0.6);
    dashedLinePath.lineTo(size.width * 0.91, size.height * 0.6);

    final path = Path();
    path.moveTo(
        size.width * 0, size.height * 0.3); // Start at the left-middle point
    var secondLinePath = Path();
    secondLinePath.moveTo(size.width * 0.28, size.height * 0.3);
    if (value > 0) {
      secondLinePath.lineTo(size.width * 0.63, size.height * 0.2);
    } else if (value < 0) {
      secondLinePath.lineTo(size.width * 0.63, size.height * 0.4);
    } else {
      secondLinePath.lineTo(size.width * 0.63, size.height * 0.3);
    }
    final center = Offset(size.width * 0.28, size.height * 0.3);
    final Offset center1;
    if (value > 0) {
      center1 = Offset(size.width * 0.63, size.height * 0.2);
    } else if (value < 0) {
      center1 = Offset(size.width * 0.63, size.height * 0.4);
    } else {
      center1 = Offset(size.width * 0.63, size.height * 0.3);
    }

    const double radius = 8;
    // Draw the white circle
    final firstDotPainter = Paint()
      ..style = PaintingStyle.fill
      ..color = Colors.blue;
    final secondDotPainter = Paint()
      ..style = PaintingStyle.fill
      ..color = Colors.orange;

    canvas.drawPath(dashedLinePath, dashLinePainter);
    canvas.drawPath(gradientPath, gradientPainter);
    canvas.drawPath(gradientPath2, gradientPainter2);
    canvas.drawPath(firstLinePath, firstLinePainter);
    canvas.drawPath(secondLinePath, secondLinePainter);
    canvas.drawCircle(center, radius, firstDotPainter);
    canvas.drawCircle(center1, radius, secondDotPainter);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
