import 'package:flutter/material.dart';
// import 'package:audioplayers/audioplayers.dart';
import 'package:whatsapp/constants/colours.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'widgets/custom_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    // final audioPlayer = AudioCache();
    return WillPopScope(
      onWillPop: () async {
        return false;
      },
      child: Scaffold(
        backgroundColor: AppColors.bgColor,
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
                  runAlignment: WrapAlignment.start,
                  runSpacing: 10.h,
                  crossAxisAlignment: WrapCrossAlignment.start,
                  children: [
                    // CustomCard(
                    //   title: 'Custom Paint',
                    //   onPressed: () => Modular.to.pushNamed('/second'),
                    // ),
                    CustomCard(
                        title: 'Test',
                        onPressed: () {
                          // audioPlayer.load('/assets/audio/click.mp3');
                          Modular.to.pushNamed('/test');
                        }),
                    CustomCard(
                        title: 'Custom Painter',
                        onPressed: () => Modular.to.pushNamed('/cp')),
                    CustomCard(
                        title: 'Shimmer Effect',
                        onPressed: () => Modular.to.pushNamed('/third')),
                    CustomCard(
                        title: 'Tween Animation',
                        onPressed: () => Modular.to.pushNamed('/tween')),
                    CustomCard(
                        title: 'Animated Icon',
                        onPressed: () => Modular.to.pushNamed('/animatedicon')),
                    CustomCard(
                        title: 'Date Range',
                        onPressed: () => Modular.to.pushNamed('/dateRange')),
                    CustomCard(
                        title: 'Music Player',
                        onPressed: () => Modular.to.pushNamed('/musicPlayer')),
                    CustomCard(
                        title: 'Hero',
                        onPressed: () => Modular.to.pushNamed('/hero')),
                    CustomCard(
                        title: 'Stretchy header',
                        onPressed: () =>
                            Modular.to.pushNamed('/stretchyHeader')),
                    CustomCard(
                        title: 'Accordion Page',
                        onPressed: () => Modular.to.pushNamed('/accor')),
                    CustomCard(
                        title: 'Navigation bar',
                        onPressed: () => Modular.to.pushNamed('/navBar')),
                    CustomCard(
                        title: 'Navigation page',
                        onPressed: () => Modular.to.pushNamed('/newnav')),
                    CustomCard(
                        title: 'Loading',
                        onPressed: () => Modular.to.pushNamed('/loading')),
                    CustomCard(
                        title: 'Flip Card',
                        onPressed: () => Modular.to.pushNamed('/flip')),
                    CustomCard(
                        title: 'My Maps',
                        onPressed: () => Modular.to.pushNamed('/maps')),
                    CustomCard(
                        title: 'Calculator',
                        onPressed: () => Modular.to.pushNamed('/calculator')),
                    CustomCard(
                        title: 'Counter',
                        onPressed: () => Modular.to.pushNamed('/counter')),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}