import 'package:flutter/material.dart';

class PostsPage extends StatelessWidget {
  const PostsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          'Post Screen',
          style: TextStyle(fontSize: 42),
        ),
      ),
    );
  }
}
