import 'package:flutter/material.dart';
import 'package:whatsapp/constants/colours.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../widgets/custom_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgGreyColor,
      appBar: AppBar(title: const Text('Home Page...')),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 16.h),
            SizedBox(
              width: double.infinity,
              child: Wrap(
                alignment: WrapAlignment.center,
                spacing: 10.w,
                runSpacing: 10.h,
                crossAxisAlignment: WrapCrossAlignment.start,
                children: [
                  CustomCard(
                    title: 'Custom Paint',
                    onPressed: () => Modular.to.pushNamed('/second'),
                  ),
                  CustomCard(
                    title: 'Custom Paint 2',
                    onPressed: () => Modular.to.pushNamed('/cp'),
                  ),
                  CustomCard(
                    title: 'Shimmer Effect',
                    onPressed: () => Modular.to.pushNamed('/third'),
                  ),
                  CustomCard(
                    title: 'Photos',
                    onPressed: () => Modular.to.pushNamed('/photos'),
                  ),
                  CustomCard(
                    title: 'Tween Animation',
                    onPressed: () => Modular.to.pushNamed('/tween'),
                  ),
                  CustomCard(
                    title: 'Animated Icon',
                    onPressed: () => Modular.to.pushNamed('/animatedicon'),
                  ),
                  CustomCard(
                    title: 'Date Range',
                    onPressed: () => Modular.to.pushNamed('/dateRange'),
                  ),
                  CustomCard(
                    title: 'Music Player',
                    onPressed: () => Modular.to.pushNamed('/musicPlayer'),
                  ),
                  CustomCard(title: 'Todo '),
                  // CustomCard(title: 'Todo 8'),
                  // CustomCard(title: 'Todo 7'),
                  // CustomCard(title: 'Todo 3'),
                  // CustomCard(title: 'Todo 4'),
                  // CustomCard(title: 'Todo 5'),
                  // CustomCard(title: 'Todo 6'),
                  // CustomCard(title: 'Todo 9'),
                  // CustomCard(title: 'Todo 8'),
                  // CustomCard(title: 'Todo 7'),
                  // CustomCard(title: 'Todo 3'),
                  // CustomCard(title: 'Todo 4'),
                  // CustomCard(title: 'Todo 5'),
                  // CustomCard(title: 'Todo 6'),
                  // CustomCard(title: 'Todo 9'),
                  // CustomCard(title: 'Todo 8'),
                  // CustomCard(title: 'Todo 7'),
                  // CustomCard(title: 'Todo 7'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
