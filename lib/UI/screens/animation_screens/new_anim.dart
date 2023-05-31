import 'package:flutter/material.dart';
import 'package:whatsapp/UI/screens/animation_screens/widgets/bg_contain.dart';

import '../../../constants/screen_util.dart';

class AnimPage extends StatefulWidget {
  const AnimPage({super.key});

  @override
  _AnimPageState createState() => _AnimPageState();
}

class _AnimPageState extends State<AnimPage>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<Offset> _animation;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    );
    final curve = CurvedAnimation(
      parent: _animationController,
      curve: Curves.fastOutSlowIn,
    );
    _animation = Tween<Offset>(
      begin: const Offset(0, 1),
      end: Offset.zero,
    ).animate(curve);

    _animationController.forward();
  }

  @override
  void dispose() {
    _animationController.dispose();
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
                    children: const [
                      SizedBox(height: 20),
                      Icon(Icons.menu, size: 40),
                      SizedBox(height: 20),
                      Text(
                        ' Generation',
                        style: TextStyle(fontSize: 32),
                      )
                    ],
                  ),
                ),
              ],
            ),
            AnimatedBuilder(
                animation: _animation,
                builder: (context, child) {
                  return Stack(
                    children: [
                      Positioned(
                        left: MediaQuery.of(context).size.width * 0.85,
                        top: MediaQuery.of(context).size.height *
                            _animation.value.dy,
                        height: MediaQuery.of(context).size.height * 0.41,
                        child: const Icon(
                          Icons.home,
                          size: 48,
                        ),
                      ),
                      Positioned(
                        left: MediaQuery.of(context).size.width * 0.1,
                        top: MediaQuery.of(context).size.height *
                            _animation.value.dy,
                        height: MediaQuery.of(context).size.height * 0.61,
                        child: const Icon(
                          Icons.play_arrow,
                          size: 48,
                        ),
                      ),
                    ],
                  );
                })
          ],
        ));
  }
}
