import 'package:flutter/material.dart';
import 'package:whatsapp/constants/colours.dart';

class AHomePage extends StatelessWidget {
  const AHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.darkBlue,
      body: const Center(
        child: Text(
          'Home Screen',
          style: TextStyle(fontSize: 42),
        ),
      ),
      // bottomNavigationBar: NavBarWid(),
    );
  }
}
