import 'package:flutter/material.dart';
import 'package:whatsapp/UI/screens/nav_bar/pages/posts.dart';
import 'package:whatsapp/UI/screens/nav_bar/pages/profile.dart';
import 'package:whatsapp/UI/screens/nav_bar/pages/settings.dart';
import 'package:whatsapp/constants/colours.dart';

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
  Widget currentScreen = const AHomePage();
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
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
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        unselectedItemColor: AppColors.greenColor,
        selectedItemColor: AppColors.orangeColor,
        backgroundColor: Colors.black,
        items: const [
          BottomNavigationBarItem(
            // icon: IconButton(
            //     onPressed: () {
            //       setState(() {
            //         currentScreen = const AHomePage();
            //         currentTab = 0;
            //       });
            //     },
            //     icon: const Icon(
            //       Icons.home,
            //     )),
            // label: 'Home',
            icon: Icon(
              Icons.home,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            // icon: IconButton(
            //     onPressed: () {
            //       setState(() {
            //         currentScreen = const PostsPage();
            //         currentTab = 1;
            //       });
            //     },
            //     icon: const Icon(
            //       Icons.post_add,
            //     )),
            // label: 'Posts',
            icon: Icon(
              Icons.podcasts,
            ),
            label: 'Posts',
          ),
          BottomNavigationBarItem(
            // icon: IconButton(
            //     onPressed: () {
            //       setState(() {
            //         currentScreen = const ProfilePage();
            //         currentTab = 2;
            //       });
            //     },
            //     icon: const Icon(
            //       Icons.call,
            //     )),
            // label: 'Profile',
            icon: Icon(
              Icons.person,
            ),
            label: 'Profile',
          ),
          BottomNavigationBarItem(
            // icon: IconButton(
            //     onPressed: () {
            //       setState(() {
            //         currentScreen = const ProfilePage();
            //         currentTab = 3;
            //       });
            //     },
            //     icon: const Icon(
            //       Icons.power_off_outlined,
            //     )),
            // label: 'Chats',
            icon: Icon(
              Icons.settings,
            ),
            label: 'Settings',
          ),
        ],
      ),
    );
  }
}
