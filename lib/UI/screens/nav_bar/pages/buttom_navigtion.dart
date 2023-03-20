import 'package:flutter/material.dart';
import 'package:whatsapp/UI/screens/nav_bar/pages/posts.dart';
import 'package:whatsapp/UI/screens/nav_bar/pages/profile.dart';
import 'package:whatsapp/UI/screens/nav_bar/pages/settings.dart';

import '../../../../constants/colours.dart';
import '../../../../constants/screen_util.dart';
import '../bar_painter.dart';
import 'home.dart';

class NaviagtionBar extends StatefulWidget {
  const NaviagtionBar({super.key});

  @override
  State<NaviagtionBar> createState() => _NaviagtionBarState();
}

class _NaviagtionBarState extends State<NaviagtionBar> {
  // int currentTab = 0;
  int _selectedIndex = 0;
  final PageStorageBucket bucket = PageStorageBucket();
  final List<Widget> _pages = [
    const AHomePage(),
    const PostsPage(),
    const ProfilePage(),
    const SettingsPage(),
  ];
  final List<Widget> _pages1 = [
    const Icon(Icons.home),
    const Icon(Icons.abc),
    const Icon(Icons.abc),
    const Icon(Icons.abc),
  ];
  Widget currentScreen = const AHomePage();
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.amber,
      appBar: AppBar(
        title: const Text('BottomNavigationBar Try'),
      ),
      body: PageStorage(
        bucket: bucket,
        child: _pages.elementAt(_selectedIndex),
      ),
      // floatingActionButton: FloatingActionButton(onPressed: () {}),
      // floatingActionButtonLocation:
      //     FloatingActionButtonLocation.miniCenterDocked,
      bottomNavigationBar: Stack(
        children: [
          CustomPaint(
            size: Size(
              SizeConfig.screenHeight,
              80,
            ),
            painter: BarPainter(),
          ),
          BottomNavigationBar(
              currentIndex: _selectedIndex,
              type: BottomNavigationBarType.fixed,
              onTap: _onItemTapped,
              unselectedItemColor: AppColors.whiteColor,
              selectedItemColor: AppColors.orangeColor,
              backgroundColor: Colors.transparent,
              items: _pages1
                  .map((e) =>
                      BottomNavigationBarItem(icon: e, label: 'Selected'))
                  .toList()
              // items: const [
              //   BottomNavigationBarItem(
              //     // icon: IconButton(
              //     //     onPressed: () {
              //     //       setState(() {
              //     //         currentScreen = const AHomePage();
              //     //         currentTab = 0;
              //     //       });
              //     //     },
              //     //     icon: const Icon(
              //     //       Icons.home,
              //     //     )),
              //     // label: 'Home',
              //     icon: Icon(
              //       Icons.home,
              //     ),
              //     label: 'Home',
              //   ),
              //   BottomNavigationBarItem(
              //     // icon: IconButton(
              //     //     onPressed: () {
              //     //       setState(() {
              //     //         currentScreen = const PostsPage();
              //     //         currentTab = 1;
              //     //       });
              //     //     },
              //     //     icon: const Icon(
              //     //       Icons.post_add,
              //     //     )),
              //     // label: 'Posts',
              //     icon: Icon(
              //       Icons.podcasts,
              //     ),
              //     label: 'Posts',
              //   ),
              //   BottomNavigationBarItem(
              //     // icon: IconButton(
              //     //     onPressed: () {
              //     //       setState(() {
              //     //         currentScreen = const ProfilePage();
              //     //         currentTab = 2;
              //     //       });
              //     //     },
              //     //     icon: const Icon(
              //     //       Icons.call,
              //     //     )),
              //     // label: 'Profile',
              //     icon: Icon(
              //       Icons.person,
              //     ),
              //     label: 'Profile',
              //   ),
              //   BottomNavigationBarItem(
              //     icon: Icon(
              //       Icons.settings,
              //     ),
              //     label: 'Settings',
              //   ),
              //   // BottomNavigationBarItem(
              //   //   icon: Icon(
              //   //     Icons.settings,
              //   //   ),
              //   //   label: 'Settings',
              //   // ),
              // ],
              ),
        ],
      ),
    );
  }
}
