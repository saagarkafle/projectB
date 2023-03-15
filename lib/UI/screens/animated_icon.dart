import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../constants/colours.dart';

class AnimatedIconPage extends StatefulWidget {
  const AnimatedIconPage({super.key});

  @override
  State<AnimatedIconPage> createState() => _AnimatedIconPageState();
}

class _AnimatedIconPageState extends State<AnimatedIconPage>
    with TickerProviderStateMixin {
  bool _isPlay = false;
  // late Animation _animation;
  // late Animation animationReturns;
  // late Animation colorAnimation;
  late AnimationController _animationController;

  @override
  void initState() {
    super.initState();
    _animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 1));
    // animation = Tween(begin: 0.0, end: 300.0).animate(animationController);

    // colorAnimation =
    //     ColorTween(begin: AppColors.greenColor, end: AppColors.orangeColor)
    //         .animate(animationController);
    // animationController.addListener(() {
    //   print(animation.value);
    //   setState(() {});
    // });
    // animationController.forward();
    // if (animation.value == 300.0) {
    //   animationReturns =
    //       Tween(begin: 300.0, end: 0.0).animate(animationController);
    // }
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgGreyColor,
      appBar: AppBar(
        title: const Text('Animated Icon'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.w),
        child: Wrap(
          children: [
            GestureDetector(
              child: AnimatedIcon(
                icon: AnimatedIcons.menu_home,
                progress: _animationController,
                size: 100.w,
              ),
              onTap: () {
                if (_isPlay == false) {
                  _animationController.forward();
                  _isPlay = true;
                } else {
                  _animationController.reverse();
                  _isPlay = false;
                }
              },
            ),
            GestureDetector(
              child: AnimatedIcon(
                icon: AnimatedIcons.add_event,
                progress: _animationController,
                size: 100.w,
              ),
              onTap: () {
                if (_isPlay == false) {
                  _animationController.forward();
                  _isPlay = true;
                } else {
                  _animationController.reverse();
                  _isPlay = false;
                }
              },
            ),
            GestureDetector(
              child: AnimatedIcon(
                icon: AnimatedIcons.ellipsis_search,
                progress: _animationController,
                size: 100.w,
              ),
              onTap: () {
                if (_isPlay == false) {
                  _animationController.forward();
                  _isPlay = true;
                } else {
                  _animationController.reverse();
                  _isPlay = false;
                }
              },
            ),
            GestureDetector(
              child: AnimatedIcon(
                icon: AnimatedIcons.play_pause,
                progress: _animationController,
                size: 100.w,
              ),
              onTap: () {
                if (_isPlay == false) {
                  _animationController.forward();
                  _isPlay = true;
                } else {
                  _animationController.reverse();
                  _isPlay = false;
                }
              },
            ),
            GestureDetector(
              child: AnimatedIcon(
                icon: AnimatedIcons.list_view,
                progress: _animationController,
                size: 100.w,
              ),
              onTap: () {
                if (_isPlay == false) {
                  _animationController.forward();
                  _isPlay = true;
                } else {
                  _animationController.reverse();
                  _isPlay = false;
                }
              },
            ),
            GestureDetector(
              child: AnimatedIcon(
                icon: AnimatedIcons.arrow_menu,
                progress: _animationController,
                size: 100.w,
              ),
              onTap: () {
                if (_isPlay == false) {
                  _animationController.forward();
                  _isPlay = true;
                } else {
                  _animationController.reverse();
                  _isPlay = false;
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
