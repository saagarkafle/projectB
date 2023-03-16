import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:whatsapp/constants/colours.dart';

import '../widgets/shimmer_widget.dart';

class ThirdPage extends StatelessWidget {
  const ThirdPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgGreyColor,
      appBar: AppBar(title: const Text('Shimmer effect')),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(height: 20.h),
              SizedBox(
                height: 50.h,
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: 25.r,
                      backgroundColor: Colors.transparent,
                      // maxRadius: 3,
                      child: ShimmerWidget(
                        color: Colors.grey.withOpacity(0.5),
                        borderRadius: 50,
                      ),
                    ),
                    SizedBox(width: 10.w),
                    Expanded(
                      child: ShimmerWidget(
                        color: Colors.grey.withOpacity(0.5),
                        borderRadius: 12,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10.w),
              SizedBox(
                height: 70.h,
                child: Expanded(
                  child: ShimmerWidget(
                    color: Colors.grey.withOpacity(0.5),
                    borderRadius: 12,
                  ),
                ),
              ),
              SizedBox(height: 10.h),
              SizedBox(
                height: 50.h,
                child: Row(
                  children: [
                    Expanded(
                      child: ShimmerWidget(
                        color: Colors.grey.withOpacity(0.5),
                        borderRadius: 12,
                      ),
                    ),
                    SizedBox(width: 10.w),
                    Expanded(
                      child: ShimmerWidget(
                        color: Colors.grey.withOpacity(0.5),
                        borderRadius: 12.r,
                      ),
                    ),
                  ],
                ),
              ),

              // ActionButton(
              //   btnName: 'Pop',
              //   btnCurve: 5,
              //   btnHeight: 40,
              //   btnWidth: 200,
              //   btnColor: AppColors.mainColor,
              //   // btnColor: AllColors.primaryColor,
              //   txtFontSize: 16,
              //   btnAction: () {
              //     Modular.to.pop();
              //   },
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
