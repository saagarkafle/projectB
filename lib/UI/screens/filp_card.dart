import 'dart:math';

import 'package:flutter/material.dart';

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
              Transform(
                alignment: Alignment.center,
                transform: Matrix4.identity()..rotateY(((_animation.value))),
                child: Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black.withOpacity(0.5),
                              spreadRadius: 5,
                              blurRadius: 7,
                              offset: const Offset(0, 3))
                        ])),
              ),
              Transform(
                alignment: Alignment.center,
                transform: Matrix4.identity()..rotateY(((-_animation.value))),
                child: Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black.withOpacity(0.5),
                              spreadRadius: 5,
                              blurRadius: 7,
                              offset: const Offset(0, 3))
                        ])),
              ),
              Transform(
                alignment: Alignment.center,
                transform: Matrix4.identity()..rotateZ(((_animation.value))),
                child: Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black.withOpacity(0.5),
                              spreadRadius: 5,
                              blurRadius: 7,
                              offset: const Offset(0, 3))
                        ])),
              ),
              Transform(
                alignment: Alignment.center,
                transform: Matrix4.identity()..rotateZ(((-_animation.value))),
                child: Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black.withOpacity(0.5),
                              spreadRadius: 5,
                              blurRadius: 7,
                              offset: const Offset(0, 3))
                        ])),
              ),
              Transform(
                alignment: Alignment.center,
                transform: Matrix4.identity()..rotateX(((_animation.value))),
                child: Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black.withOpacity(0.5),
                              spreadRadius: 5,
                              blurRadius: 7,
                              offset: const Offset(0, 3))
                        ]),
                    child: const Text('data')),
              ),
              Transform(
                alignment: Alignment.center,
                transform: Matrix4.identity()
                  ..rotateX(((_animation.value * -1))),
                child: Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black.withOpacity(0.5),
                              spreadRadius: 5,
                              blurRadius: 7,
                              offset: const Offset(0, 3))
                        ]),
                    child: const Text('data')),
              ),
            ],
          );
        },
      )),
    );
  }
}
