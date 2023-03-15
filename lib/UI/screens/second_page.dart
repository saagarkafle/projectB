import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../constants/colours.dart';
import '../widgets/custom_painter.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgGreyColor,
      appBar: AppBar(
        title: const Text('Custom Painter Practice'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.w),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomPaint(
              foregroundPainter: CirclePainter(),
              // child: Container(
              //   height: 160,
              //   width: 160,
              //   color: AppColors.mainColor,
              // ),
            )
          ],
        ),
      ),
    );
  }
}
