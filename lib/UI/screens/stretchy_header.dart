import 'package:flutter/material.dart';

class StretchyHeader extends StatefulWidget {
  const StretchyHeader({super.key});

  @override
  State<StretchyHeader> createState() => _StretchyHeaderState();
}

class _StretchyHeaderState extends State<StretchyHeader> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: const Text('Custom Painter 2'),
      // ),
      body: CustomScrollView(
        physics: const BouncingScrollPhysics(),
        slivers: [
          SliverAppBar(
            pinned: true,

            // backgroundColor: Colors.orangeAccent,
            expandedHeight: 350,
            stretchTriggerOffset: 200,
            stretch: true,
            flexibleSpace: FlexibleSpaceBar(
              stretchModes: const [
                StretchMode.zoomBackground,
                StretchMode.fadeTitle,
                StretchMode.blurBackground,
              ],
              title: const Text('This is Pokhara'),
              centerTitle: true,
              background: Stack(
                fit: StackFit.expand,
                children: [
                  // DecoratedBox(
                  //     decoration: BoxDecoration(
                  //         gradient: LinearGradient(
                  //             begin: const Alignment(0, 0.5),
                  //             end: const Alignment(0, 0),
                  //             colors: [
                  //       AppColors.bgColor,
                  //       AppColors.darkBlue
                  //     ]))),
                  Image.asset("assets/f.jpg",
                      height: 200.0, width: 160, fit: BoxFit.cover),
                ],
              ),
            ),
          ),
          SliverList(
              delegate: SliverChildListDelegate([
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'Since your browser is your gateway to the internet, speed, security, privacy and utility are paramount. In recent years, Google Chrome has been the browser of choice for many. But at a time when online ads seem to follow us everywhere and data breaches are a fixture of news headlines, a lot of people are starting to demand more privacy and respect from their browser.Since your browser is your gateway to the internet, speed, security, privacy and utility are paramount. In recent years, Google Chrome has been the browser of choice for many. But at a time when online ads seem to follow us everywhere and data breaches are a fixture of news headlines, a lot of people are starting to demand more privacy and respect from their browser.'
                'Since your browser is your gateway to the internet, speed, security, privacy and utility are paramount. In recent years, Google Chrome has been the browser of choice for many. But at a time when online ads seem to follow us everywhere and data breaches are a fixture of news headlines, a lot of people are starting to demand more privacy and respect from their browser.Since your browser is your gateway to the internet, speed, security, privacy and utility are paramount. In recent years, Google Chrome has been the browser of choice for many. But at a time when online ads seem to follow us everywhere and data breaches are a fixture of news headlines, a lot of people are starting to demand more privacy and respect from their browser.',
                style: TextStyle(fontSize: 24),
              ),
            )
          ]))
        ],
      ),
    );
  }
}
