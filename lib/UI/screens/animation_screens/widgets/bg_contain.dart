// ignore_for_file: unused_local_variable

import 'package:flutter/material.dart';

class BgPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..color = const Color.fromARGB(255, 20, 85, 85)
      ..style = PaintingStyle.fill;
    Paint paintBlack = Paint()
      ..color = const Color.fromARGB(255, 0, 0, 0)
      ..style = PaintingStyle.fill;
    Path path = Path()..moveTo(0, 0);
    path.lineTo(size.width, 0);
    path.lineTo(size.width, 180);
    path.lineTo(140, 180);
    path.quadraticBezierTo(50, 180, 40, 260);
    path.quadraticBezierTo(40, 360, 140, 360);
    path.lineTo(size.width, 360);
    path.lineTo(size.width, 460);
    path.lineTo(100, 460);
    path.quadraticBezierTo(30, 460, 0, 390);
    path.lineTo(0, 390);
    path.close();

    // var center = Offset(size.width / 2, size.height / 0.13);
    // var center2 = Offset(size.width / 3, size.height / 0.13);
    // var center3 = Offset(size.width * 0.67, size.height / 0.13);
    // var roundedRectangle = RRect.fromRectAndRadius(
    //   Rect.fromCenter(center: center, width: size.width - 80, height: 150.0),
    //   const Radius.circular(65.0),
    // );
    // canvas.drawRRect(roundedRectangle, paint);
    // canvas.drawCircle(center2, 50, paintBlack);
    // canvas.drawCircle(center3, 50, paintBlack);
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}

class BgPainter2 extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..color = const Color.fromARGB(255, 20, 85, 85)
      ..style = PaintingStyle.fill;
    Paint paintBlack = Paint()
      ..color = const Color.fromARGB(255, 0, 0, 0)
      ..style = PaintingStyle.fill;

    var center = Offset(size.width / 2, size.height / 0.13);
    var center2 = Offset(size.width / 3, size.height / 0.13);
    var center3 = Offset(size.width * 0.67, size.height / 0.13);
    var roundedRectangle = RRect.fromRectAndRadius(
      Rect.fromCenter(center: center, width: size.width - 80, height: 150.0),
      const Radius.circular(65.0),
    );
    canvas.drawRRect(roundedRectangle, paint);
    canvas.drawCircle(center2, 50, paintBlack);
    canvas.drawCircle(center3, 50, paintBlack);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}

class BgPainter1 extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..color = const Color.fromARGB(255, 20, 85, 85)
      ..style = PaintingStyle.fill;
    Path path = Path()..moveTo(0, 0);
    path.lineTo(size.width, 0);
    path.lineTo(size.width, 180);
    path.lineTo(100, 180);
    path.quadraticBezierTo(15, 180, 0, 260);
    path.close();
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
