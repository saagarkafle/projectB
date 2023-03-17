import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../widgets/cp2.dart';

class CustomPaintPage extends StatelessWidget {
  const CustomPaintPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: AppColors.bgGreyColor,
      appBar: AppBar(
        title: const Text('Custom Painter..'),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
        child: CustomPaint(
          painter: ShapePainter(),
        ),
      ),
    );
  }
}
