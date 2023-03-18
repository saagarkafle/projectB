import 'dart:math';

import 'package:flutter/material.dart';

import '../widgets/flip_card.dart';

class FlipY extends StatefulWidget {
  const FlipY({super.key});

  @override
  State<FlipY> createState() => _FlipYState();
}

class _FlipYState extends State<FlipY> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation _animation;

  @override
  void initState() {
    super.initState();
    _controller =
        AnimationController(vsync: this, duration: const Duration(seconds: 2));
    _animation = Tween<double>(begin: 1, end: 2 * pi).animate(_controller);
    _controller.repeat();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Flip X Y Z')),
      body: Center(
          child: AnimatedBuilder(
        animation: _controller,
        builder: (context, child) {
          return Wrap(
            spacing: 80,
            runSpacing: 80,
            children: [
              FlipCard(
                transform: Matrix4.identity()..rotateY(((_animation.value))),
                borderWidth: 4,
              ),
              FlipCard(
                transform: Matrix4.identity()..rotateY(((-_animation.value))),
              ),
              FlipCard(
                transform: Matrix4.identity()..rotateZ(((_animation.value))),
              ),
              FlipCard(
                transform: Matrix4.identity()..rotateZ(((-_animation.value))),
              ),
              FlipCard(
                transform: Matrix4.identity()..rotateX(((_animation.value))),
              ),
              FlipCard(
                transform: Matrix4.identity()
                  ..rotateX(((_animation.value * -1))),
              ),
            ],
          );
        },
      )),
    );
  }
}
