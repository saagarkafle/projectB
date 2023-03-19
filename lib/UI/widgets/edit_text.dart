import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class EditText extends StatelessWidget {
  // final Color textColor;
  final String hint;
  final int maxLine;
  final int? maxLength;
  final bool isObscure;
  final Color? textFieldColor, hintFieldColor;
  final TextInputType? keyboardType;
  final double marginTop, marginBottom, marginLeft, marginRight;
  final TextEditingController? controller;
  final bool isReadOnly;
  final double? fontSize;
  final double? height;
  final String? Function(String? val)? validator;

  const EditText(
      {super.key,
      required this.hint,
      this.maxLine = 1,
      this.maxLength,
      this.fontSize,
      this.isReadOnly = false,
      this.isObscure = false,
      this.keyboardType,
      this.marginTop = 0.0,
      this.marginBottom = 0.0,
      this.height,
      this.marginLeft = 0.0,
      this.textFieldColor,
      this.hintFieldColor,
      this.validator,
      this.marginRight = 0.0,
      this.controller});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.85),
          borderRadius: BorderRadius.all(Radius.circular(12.sp))),
      padding: EdgeInsets.only(left: 10.w),
      margin: EdgeInsets.only(
          top: marginTop,
          bottom: marginBottom,
          right: marginRight,
          left: marginLeft),
      child: TextFormField(
        style: TextStyle(
          color: Colors.black,
          fontSize: fontSize ?? 14.sp,
          height: height,
        ),
        controller: controller,
        maxLines: maxLine,
        readOnly: isReadOnly,
        maxLength: maxLength,
        validator: validator,
        keyboardType: keyboardType,
        obscureText: isObscure,
        decoration: InputDecoration(
          hintText: hint,
          border: InputBorder.none,
          counterText: '',
          hintStyle: TextStyle(color: Colors.grey, fontSize: 14.sp),
        ),
      ),
    );
  }
}
