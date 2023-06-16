// ignore_for_file: unused_field

import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../constants/colours.dart';

class SemiCircularProgressRing extends StatefulWidget {
  const SemiCircularProgressRing({
    Key? key,
    required this.progress,
    this.linearGradientFirstColor = Colors.green,
    this.linearGradientSecondColor = Colors.grey,
  }) : super(key: key);
  final int progress;
  final Color? linearGradientFirstColor;
  final Color? linearGradientSecondColor;

  @override
  State<SemiCircularProgressRing> createState() =>
      _SemiCircularProgressRingState();
}

class _SemiCircularProgressRingState extends State<SemiCircularProgressRing>
    with SingleTickerProviderStateMixin {
  AnimationController? _animationController;
  Animation<double>? _animation;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 1500));

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
    return GestureDetector(
      child: SizedBox(
        height: 66.h,
        width: 66.w,
        child: Center(
          child: Column(
            children: [
              CustomPaint(
                foregroundPainter: SemiCircularProgress(
                  linearGradientFirstColor: const Color(0xffE7E7E7),
                  linearGradientSecondColor: Colors.green,
                  animationProgress: _animationController!.value,
                  progress: widget.progress,
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(3.w),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            "${widget.progress} of 5",
                            style: TextStyle(
                                color: AppColors.primaryColor, fontSize: 10.sp),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Text(
                'Step',
                style: TextStyle(
                  color: AppColors.primaryColor,
                  fontSize: 13.sp,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class SemiCircularProgress extends CustomPainter {
  SemiCircularProgress({
    required this.animationProgress,
    required this.progress,
    this.linearGradientFirstColor,
    this.linearGradientSecondColor,
  });
  final double strokeWidth = 10.w;
  final double animationProgress;
  final int progress;
  final Color? linearGradientFirstColor;
  final Color? linearGradientSecondColor;
  @override
  void paint(Canvas canvas, Size size) {
    Paint circle = Paint()
      ..strokeWidth = strokeWidth
      ..color = linearGradientFirstColor ?? const Color(0xffE7E7E7)
      ..style = PaintingStyle.stroke
      ..isAntiAlias = true
      ..strokeCap = StrokeCap.round;

    Offset center = Offset(size.width / 2, size.height / 2);
    double animatedRadius = size.width;

    canvas.drawArc(
      Rect.fromCircle(center: center, radius: animatedRadius),
      -pi * 1.2,
      pi * 1.39,
      false,
      circle,
    );

    Paint animationArch = Paint()
      ..isAntiAlias = true
      ..strokeWidth = strokeWidth
      ..color = linearGradientSecondColor ?? Colors.green
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round;

    double angle = (animationProgress * progress * 0.87336275769);
    if (progress > 0) {
      canvas.drawArc(Rect.fromCircle(center: center, radius: animatedRadius),
          -pi * 1.2, angle, false, animationArch);
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
