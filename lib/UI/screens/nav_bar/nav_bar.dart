import 'package:flutter/material.dart';
import 'package:whatsapp/constants/colours.dart';
import 'package:whatsapp/constants/screen_util.dart';

import 'bar_painter.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

bool isHome = true;
bool isPost = false;
bool isProfile = false;
bool isSettings = false;

class _NavBarState extends State<NavBar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgGreyColor,
      body: Stack(children: [
        Positioned(
          bottom: 0,
          left: 0,
          child: Container(
            color: AppColors.bgGreyColor,
            width: SizeConfig.screenWidth,
            height: 80,
            child: Stack(children: [
              CustomPaint(
                size: Size(
                  SizeConfig.screenHeight,
                  80,
                ),
                painter: BarPainter(),
              ),
              Center(
                heightFactor: 0.6,
                child: FloatingActionButton(
                  onPressed: () {},
                  elevation: 0.1,
                  backgroundColor: AppColors.blackColor,
                  child: Icon(
                    Icons.add,
                    color: AppColors.whiteColor,
                    size: 42,
                  ),
                ),
              ),
              SizedBox(
                width: SizeConfig.screenWidth,
                height: 80,
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          IconButton(
                            icon: const Icon(Icons.home),
                            onPressed: () {
                              isHome = true;
                              isPost = false;
                              isProfile = false;
                              isSettings = false;
                              setState(() {});
                            },
                            color:
                                isHome ? AppColors.primaryColor : Colors.white,
                          ),
                          if (isHome)
                            Text(
                              'Home',
                              style: TextStyle(
                                color: AppColors.primaryColor,
                              ),
                            )
                        ],
                      ),
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          IconButton(
                            icon: const Icon(Icons.post_add),
                            onPressed: () {
                              isHome = false;
                              isPost = true;
                              isProfile = false;
                              isSettings = false;
                              setState(() {});
                            },
                            color:
                                isPost ? AppColors.primaryColor : Colors.white,
                          ),
                          if (isPost)
                            Text(
                              'Post',
                              style: TextStyle(
                                color: AppColors.primaryColor,
                              ),
                            )
                        ],
                      ),
                      Container(
                        width: SizeConfig.screenWidth * 0.20,
                      ),
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          IconButton(
                            icon: const Icon(Icons.person),
                            onPressed: () {
                              isHome = false;
                              isPost = false;
                              isProfile = true;
                              isSettings = false;
                              setState(() {});
                            },
                            color: isProfile
                                ? AppColors.primaryColor
                                : Colors.white,
                          ),
                          if (isProfile)
                            Text(
                              'Profile',
                              style: TextStyle(
                                color: AppColors.primaryColor,
                              ),
                            )
                        ],
                      ),
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          IconButton(
                            icon: const Icon(Icons.settings),
                            onPressed: () {
                              isHome = false;
                              isPost = false;
                              isProfile = false;
                              isSettings = true;
                              setState(() {});
                            },
                            color: isSettings
                                ? AppColors.primaryColor
                                : Colors.white,
                          ),
                          if (isSettings)
                            Text(
                              'Settings',
                              style: TextStyle(
                                color: AppColors.primaryColor,
                              ),
                            )
                        ],
                      ),
                    ]),
              )
            ]),
          ),
        )
      ]),
    );
  }
}
