// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import '../../constants/colours.dart';

class FlipCard extends StatelessWidget {
  Matrix4 transform;
  double? size, borderWidth;
  Color? color;
  FlipCard(
      {Key? key,
      required this.transform,
      this.size,
      this.color,
      this.borderWidth})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Transform(
      alignment: Alignment.center,
      transform: transform,
      child: Container(
          height: size ?? 100,
          width: size ?? 100,
          decoration: BoxDecoration(
              border: Border.all(
                  width: borderWidth ?? 1, color: AppColors.orangeColor),
              color: color ?? Colors.blue,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                    color: Colors.black.withOpacity(0.2),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: const Offset(0, 3))
              ])),
    );
  }
}
