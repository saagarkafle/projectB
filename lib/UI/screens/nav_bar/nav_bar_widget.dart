import 'package:flutter/material.dart';

import '../../../constants/colours.dart';
import '../../../constants/screen_util.dart';
import 'bar_painter.dart';

class NavBarWid extends StatefulWidget {
  const NavBarWid({super.key});

  @override
  State<NavBarWid> createState() => _NavBarWidState();
}

class _NavBarWidState extends State<NavBarWid> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.whiteColor,
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
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                IconButton(
                  icon: const Icon(Icons.home),
                  onPressed: () {
                    setState(() {});
                  },
                  color: AppColors.primaryColor,
                ),
                // if (isHome)
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
                    // isHome = false;
                    // isPost = true;
                    // isProfile = false;
                    // isSettings = false;
                    setState(() {});
                  },
                  color: Colors.white,
                ),
                // if (isPost)
                // Text(
                //   'Post',
                //   style: TextStyle(
                //     color: AppColors.orangeColor,
                //   ),
                // )
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
                    // isHome = false;
                    // isPost = false;
                    // isProfile = true;
                    // isSettings = false;
                    setState(() {});
                  },
                  color: Colors.white,
                ),
                // if (isProfile)
                // Text(
                //   'Profile',
                //   style: TextStyle(
                //     color: AppColors.orangeColor,
                //   ),
                // )
              ],
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                IconButton(
                  icon: const Icon(Icons.settings),
                  onPressed: () {
                    // isHome = false;
                    // isPost = false;
                    // isProfile = false;
                    // isSettings = true;
                    setState(() {});
                  },
                  color: Colors.white,
                ),
                // if (isSettings)
                // Text(
                //   'Settings',
                //   style: TextStyle(
                //     color: AppColors.orangeColor,
                //   ),
                // )
              ],
            ),
          ]),
        )
      ]),
    );
  }
}
