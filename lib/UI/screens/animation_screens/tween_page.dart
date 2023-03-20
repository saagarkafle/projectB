import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../constants/colours.dart';

class TweenPage extends StatefulWidget {
  const TweenPage({super.key});

  @override
  State<TweenPage> createState() => _TweenPageState();
}

class _TweenPageState extends State<TweenPage>
    with SingleTickerProviderStateMixin {
  late Animation animation;
  late Animation animationReturns;
  late Animation colorAnimation;
  late AnimationController animationController;
  // late AnimationController colorAnimationController;

  @override
  void initState() {
    super.initState();
    animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 2));
    animation = Tween(begin: 0.0, end: 300.0).animate(animationController);

    colorAnimation =
        ColorTween(begin: AppColors.secondaryColor, end: AppColors.primaryColor)
            .animate(animationController);
    animationController.addListener(() {
      print(animation.value);
      setState(() {});
    });
    animationController.forward();
    if (animation.value == 300.0) {
      animationReturns =
          Tween(begin: 300.0, end: 0.0).animate(animationController);
    }
  }

  @override
  void dispose() {
    if (animation.value == 300.0) animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgGreyColor,
      appBar: AppBar(
        title: const Text('Tween Animation'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.w),
        child: Column(
          children: [
            SizedBox(
              height: animation.value,
            ),
            Container(
              color: colorAnimation.value,
              height: animation.value - (animation.value / 2),
              width: animation.value,
            )
          ],
        ),
      ),
    );
  }
}
