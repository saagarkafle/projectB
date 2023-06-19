import 'package:flutter/material.dart';

class BordredButton extends StatelessWidget {
  final String title;
  final double radius;
  final double height;
  final double? width;
  final double textSize;
  final Color? buttonColor;
  final Color? textColor;
  final Function() onTap;

  const BordredButton({
    Key? key,
    required this.title,
    required this.radius,
    required this.height,
    this.width,
    required this.textSize,
    required this.onTap,
    this.buttonColor,
    this.textColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.symmetric(horizontal: 4),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.blue),
          borderRadius: BorderRadius.all(
            Radius.circular(radius),
          ),
        ),
        height: height,
        width: width,
        child: Row(
          children: [
            const Icon(
              Icons.lock_clock,
              color: Colors.black,
              size: 16,
            ),
            const SizedBox(width: 4),
            Text(
              title,
              style: TextStyle(
                  color: textColor ?? Colors.black,
                  fontSize: textSize,
                  fontWeight: FontWeight.w500),
            ),
          ],
        ),
      ),
    );
  }
}
