import 'package:flutter/material.dart';
import 'package:whatsapp/constants/screen_util.dart';

import 'animation_screens/loading.dart';

class TestPage extends StatefulWidget {
  const TestPage({super.key});

  @override
  State<TestPage> createState() => _TestPageState();
}

class _TestPageState extends State<TestPage> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/splash.jpg'),
                fit: BoxFit.cover),
          ),
        ),
        Positioned(
            top: SizeConfig.screenHeight / 1.3,
            left: SizeConfig.screenWidth / 2.7,
            child: const SizedBox(
              height: 120,
              child: LoadingPage(),
            ))
      ],
    );
  }
}
