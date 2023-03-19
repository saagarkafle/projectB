// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:whatsapp/constants/colours.dart';

class EachTextField extends StatefulWidget {
  final Color textColor;
  final TextInputType? inputType;
  final TextInputAction inputAction;
  // final String? Function(String?) validator;
  final EdgeInsetsGeometry contentPadding;
  final String? Function(String?) onChanged;
  final String hintText;
  final double btnCurve;

  final Color fillColor;
  final bool filled;
  final bool isDense;
  final bool obscureText;
  final bool border;
  final Function? fieldSubmission;
  final FocusNode? focus;

  const EachTextField({
    Key? key,
    required this.textColor,
    this.inputType,
    required this.inputAction,
    required this.contentPadding,
    required this.onChanged,
    required this.hintText,
    required this.btnCurve,
    required this.fillColor,
    required this.filled,
    required this.isDense,
    this.obscureText = false,
    required this.border,
    this.fieldSubmission,
    this.focus,
  }) : super(key: key);

  @override
  State<EachTextField> createState() => _EachTextFieldState();
}

class _EachTextFieldState extends State<EachTextField> {
  bool isHiddenPassword = true;

  void _togglePasswordShow() {
    setState(() {
      isHiddenPassword = !isHiddenPassword;
    });
  }

  void _submission() {
    if (widget.fieldSubmission != null) {
      widget.fieldSubmission!();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 0),
      decoration: BoxDecoration(
        border: widget.border == true
            ? Border.all(color: AppColors.borderColor)
            : null,
        borderRadius: BorderRadius.all(
          Radius.circular(widget.btnCurve),
        ),
      ),
      child: TextFormField(
        style: TextStyle(
          color: widget.textColor,
          fontSize: 14,
        ),
        autovalidateMode: AutovalidateMode.onUserInteraction,
        focusNode: widget.focus,
        keyboardType: widget.inputType ?? TextInputType.text,
        textInputAction: widget.inputAction,
        onChanged: widget.onChanged,
        obscureText: widget.obscureText ? isHiddenPassword : false,
        onFieldSubmitted: (_) => _submission(),
        decoration: InputDecoration(
          // floatingLabelBehavior: FloatingLabelBehavior.auto,
          // floatingLabelStyle: TextStyle(
          //   height: 4,
          //   fontSize: 14,
          //   color: AppColors.hintText,
          // ),
          contentPadding: const EdgeInsets.fromLTRB(10, 20, 10, 10),
          labelText: widget.hintText,
          hintStyle: TextStyle(
            color: AppColors.hintText,
            fontSize: 14,
          ),
          // labelStyle: TextStyle(
          //   color: AppColors.hintText,
          //   fontSize: 14,
          // ),
          fillColor: Colors.black,
          filled: widget.filled,
          isDense: widget.isDense,
          // border: OutlineInputBorder(
          //   borderSide: BorderSide.none,
          //   borderRadius: BorderRadius.circular(12),
          // ),
          suffixIcon: widget.obscureText
              ? InkWell(
                  onTap: _togglePasswordShow,
                  child: Icon(
                    isHiddenPassword ? Icons.visibility_off : Icons.visibility,
                  ),
                )
              : null,
        ),
      ),
    );
  }
}
