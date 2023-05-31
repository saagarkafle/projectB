// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:whatsapp/UI/screens/animation_screens/widgets/bg_contain.dart';

import '../../../constants/screen_util.dart';

class AnimPage extends StatefulWidget {
  const AnimPage({super.key});

  @override
  _AnimPageState createState() => _AnimPageState();
}

class _AnimPageState extends State<AnimPage> with TickerProviderStateMixin {
  late AnimationController _animationController;
  late AnimationController _animationController3;
  late AnimationController _animationController2;
  late Animation<Offset> _animation;
  late Animation<Offset> _animation2;
  bool _isPlay = false;

  @override
  void initState() {
    super.initState();
    _animationController3 =
        AnimationController(vsync: this, duration: const Duration(seconds: 1));
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    );
    _animationController2 = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    );
    final curve = CurvedAnimation(
      parent: _animationController,
      curve: Curves.fastOutSlowIn,
    );
    final curve2 = CurvedAnimation(
      parent: _animationController2,
      curve: Curves.fastOutSlowIn,
    );
    _animation = Tween<Offset>(
      begin: const Offset(0, 1),
      end: Offset.zero,
    ).animate(curve);
    _animation2 = Tween<Offset>(
      begin: const Offset(0, 1),
      end: Offset.zero,
    ).animate(curve2);

    _animationController
        .forward()
        .whenComplete(() => _animationController2.forward());
  }

  @override
  void dispose() {
    _animationController.dispose();
    _animationController3.dispose();
    _animationController2.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Animated Widget Example'),
        ),
        body: Stack(
          children: [
            Stack(
              children: [
                CustomPaint(
                  size: Size(
                    SizeConfig.screenHeight,
                    80,
                  ),
                  painter: BgPainter(),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 20),
                      // Icon(Icons.menu, size: 40),
                      GestureDetector(
                        child: AnimatedIcon(
                          icon: AnimatedIcons.menu_home,
                          progress: _animationController3,
                          size: 40.w,
                        ),
                        onTap: () {
                          if (_isPlay == false) {
                            _animationController3.forward();
                            _isPlay = true;
                          } else {
                            _animationController3.reverse();
                            _isPlay = false;
                          }
                        },
                      ),
                      const SizedBox(height: 20),
                      const Text(
                        ' Generation',
                        style: TextStyle(fontSize: 32),
                      )
                    ],
                  ),
                ),
              ],
            ),
            Stack(
              children: [
                AnimatedBuilder(
                    animation: _animation2,
                    builder: (context, child) {
                      return Positioned(
                        left: MediaQuery.of(context).size.width * 0.7,
                        top: MediaQuery.of(context).size.height *
                            _animation.value.dy,
                        height: MediaQuery.of(context).size.height * 0.61,
                        child: const Icon(
                          Icons.play_arrow,
                          size: 88,
                        ),
                      );
                    }),
                AnimatedBuilder(
                    animation: _animation,
                    builder: (context, child) {
                      return Positioned(
                        left: MediaQuery.of(context).size.width * 0.25,
                        top: MediaQuery.of(context).size.height *
                            _animation.value.dy,
                        height: MediaQuery.of(context).size.height * 0.61,
                        child: const Icon(
                          Icons.pause,
                          size: 88,
                        ),
                      );
                    }),
              ],
            )
          ],
        ));
  }
}
