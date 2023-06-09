import 'package:flutter/material.dart';

class BulletedTextItem extends StatelessWidget {
  final String text;
  const BulletedTextItem({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      const Text(
        "\u2022",
        style: TextStyle(fontSize: 12, color: Colors.black),
      ),
      const SizedBox(width: 4),
      Expanded(
          child: Text(
        text,
        style: const TextStyle(fontSize: 12, color: Colors.black),
      ))
    ]);
  }
}