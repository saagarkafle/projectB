import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../constants/colours.dart';

// ignore: must_be_immutable
class CustomCard extends StatelessWidget {
  String title;
  VoidCallback? onPressed;

  CustomCard({
    Key? key,
    required this.title,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Card(
        elevation: 15,
        color: AppColors.whiteColor,
        shadowColor: AppColors.darkBlue,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(16),
            topRight: Radius.circular(6),
            bottomRight: Radius.circular(16),
            bottomLeft: Radius.circular(6),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SizedBox(
            height: 60.h,
            width: 80.w,
            child: Center(
                child: Text(
              title,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: AppColors.blackColor,
                fontSize: 18.sp,
              ),
            )),
          ),
        ),
      ),
    );
  }
}
