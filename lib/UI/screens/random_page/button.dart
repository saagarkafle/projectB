import 'package:flutter/material.dart';

class FilledButton1 extends StatelessWidget {
  final String title;
  final double radius;
  final double height;
  final double? width;
  final double fontSize;
  final Color? buttonColor;
  final Color? titleColor;
  final Function() buttonAction;

  const FilledButton1({
    Key? key,
    required this.title,
    required this.radius,
    required this.height,
    this.width,
    required this.fontSize,
    required this.buttonAction,
    this.buttonColor,
    this.titleColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: buttonAction,
      child: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.symmetric(horizontal: 8),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(radius),
          color: buttonColor ?? Colors.green,
        ),
        height: height,
        width: width,
        child: Text(
          title,
          style: TextStyle(
              color: titleColor,
              fontSize: fontSize,
              fontWeight: FontWeight.w500),
        ),
      ),
    );
  }
}
