import 'package:flutter/material.dart';

import '../../constants/colours.dart';
import '../../constants/screen_util.dart';

class ActionButton extends StatelessWidget {
  final String btnName;
  final double btnCurve;
  final double btnHeight;
  final double? btnWidth;
  final double txtFontSize;
  final Color? btnColor;
  final Color? txtColor;
  final Function() btnAction;

  const ActionButton({
    Key? key,
    required this.btnName,
    required this.btnCurve,
    required this.btnHeight,
    this.btnWidth,
    required this.txtFontSize,
    required this.btnAction,
    this.btnColor,
    this.txtColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: btnAction,
      child: Container(
        // duration: const Duration(milliseconds: 300),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(btnCurve),
          color: btnColor ?? AppColors.mainColor,
        ),
        height: btnHeight,
        width: btnWidth ?? SizeConfig.screenWidth,
        child: Text(
          btnName,
          style: TextStyle(
              color: txtColor ?? AppColors.whiteColor,
              fontSize: txtFontSize,
              fontWeight: FontWeight.w500),
        ),
      ),
    );
  }
}
