import 'package:flutter/material.dart';

class AHomePage extends StatelessWidget {
  const AHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      // backgroundColor: AppColors.darkBlue,
      body: Center(
        child: Text(
          'Home Screen',
          style: TextStyle(fontSize: 42),
        ),
      ),
      // bottomNavigationBar: NavBarWid(),
    );
  }
}
