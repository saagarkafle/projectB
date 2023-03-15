import 'package:flutter/material.dart';

class CirclePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint()
      ..color = Colors.redAccent
      ..strokeWidth = 5
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round;

    var paints = Paint()
      ..color = Colors.black
      ..strokeWidth = 5
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round;

    // Offset center = Offset(size.width / 2, size.height / 2);
    // Offset start = const Offset(0, 0);
    // Offset end = const Offset(100, 0);

    // Offset startt = const Offset(100, 0);
    // Offset endt = const Offset(300, 150);
    //TO MAKE A CIRCLE
    // canvas.drawCircle(center, 100, paint);
    canvas.drawLine(const Offset(0, 0), const Offset(200, 0), paints);
    canvas.drawLine(const Offset(200, 0), const Offset(160, 40), paints);
    canvas.drawLine(const Offset(160, 40), const Offset(200, 80), paints);
    canvas.drawLine(const Offset(200, 80), const Offset(0, 80), paints);
    canvas.drawLine(const Offset(0, 80), const Offset(0, 0), paints);

    canvas.drawLine(const Offset(0, 0), const Offset(100, 0), paint);
    canvas.drawLine(const Offset(100, 0), const Offset(80, 20), paint);
    canvas.drawLine(const Offset(80, 20), const Offset(100, 40), paint);
    canvas.drawLine(const Offset(100, 40), const Offset(0, 40), paint);
    canvas.drawLine(const Offset(0, 40), const Offset(0, 0), paint);

    canvas.drawCircle(const Offset(150, 150), 50, paint);

    // canvas.drawRect(const Offset(150, 150) & const Size(200, 200), paint);

    canvas.drawArc(
        const Offset(150, 200) & const Size(200, 200), 1, 1, true, paint);
    canvas.drawArc(
        const Offset(150, 200) & const Size(200, 200), 4, 1, false, paint);
    canvas.drawArc(
        const Offset(150, 200) & const Size(200, 200), 6, 1, false, paint);

    //TO MAKE A CIRCLE USING PATH
    // var path = Path();
    // path.addOval(Rect.fromCircle(center: center, radius: 100));
    // canvas.drawPath(path, paint);

    //TO DRAW A SQUARE or any other shapes
    // var sides = 6; // change the number of side for any shapes
    // var radius = 150.0;
    // var path = Path();
    // var angle = (math.pi * 2) / sides;

    // Offset startPoint = Offset(radius * math.cos(0.0), radius * math.sin(0.0));
    // path.moveTo(startPoint.dx + center.dx, startPoint.dy + center.dy);

    // for (int i = 1; i <= sides; i++) {
    //   double x = radius * math.cos(angle * i) + center.dx;
    //   double y = radius * math.sin(angle * i) + center.dy;

    //   path.lineTo(x, y);
    // }
    // path.close();
    // canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
