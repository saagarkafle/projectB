import 'package:flutter/material.dart';

class HeroSecond extends StatelessWidget {
  const HeroSecond({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Hero')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Column(
              children: [
                Hero(
                  tag: 'tag-2',
                  child: SizedBox(
                    height: 360,
                    width: 360,
                    child: Image.asset(
                      "assets/messi.jpg",
                      height: 200.0,
                      width: 160,
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                const Hero(
                    tag: 'tag-3',
                    child:
                        Text('Lionel Messi', style: TextStyle(fontSize: 32))),
                const SizedBox(height: 20),
                const Text('Footballer', style: TextStyle(fontSize: 24)),
              ],
            ),
          )
        ],
      ),
    );
  }
}
