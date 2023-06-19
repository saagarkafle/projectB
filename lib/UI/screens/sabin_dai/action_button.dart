import 'package:flutter/material.dart';

class ActionButton extends StatelessWidget {
  final String title;
  final double radius;
  final double height;
  final double? width;
  final double fontSize;
  final Color? buttonColor;
  final Color? titleColor;
  final Function() onTap;

  const ActionButton({
    Key? key,
    required this.title,
    required this.radius,
    required this.height,
    this.width,
    required this.fontSize,
    required this.onTap,
    this.buttonColor,
    this.titleColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
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
