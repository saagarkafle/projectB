import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
import 'package:whatsapp/constants/colours.dart';

class ShimmerWidget extends StatelessWidget {
  const ShimmerWidget({
    Key? key,
    this.height,
    this.width,
    this.color,
    this.borderRadius = 0,
    this.padding = EdgeInsets.zero,
    this.margin = EdgeInsets.zero,
  }) : super(key: key);

  final double? height;
  final double? width;
  final Color? color;
  final double borderRadius;
  final EdgeInsets padding;
  final EdgeInsets margin;

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: AppColors.subTitleColor,
      highlightColor: Colors.grey.withOpacity(0.6),
      child: Container(
        margin: margin,
        height: height,
        width: width,
        padding: padding,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(borderRadius),
        ),
      ),
    );
  }
}
