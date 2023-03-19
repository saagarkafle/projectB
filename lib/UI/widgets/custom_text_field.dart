import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../constants/colours.dart';
import '../../constants/const.dart';

class CustomTextField extends StatefulWidget {
  final String? labelText;
  final TextEditingController? controller;
  final bool readonly;
  final bool obscureText;
  final IconData? suffixIcon;
  final int? maxLength;
  final Function? validate;
  final VoidCallback? onTap;
  final TextInputType keywordType;
  final TextInputAction? textInputAction;
  final String? suffixText;
  final String? prefixText;
  final String? hintText;
  final Color? labelTextColor;
  final bool isSmallText;
  final bool isDisabled;
  final Widget? preferWidget;
  final bool removePrefixIconDivider;
  final VoidCallback? onClickPsToggle;
  final Function? onFieldSubmit;
  final FocusNode? focusNode;
  final Function? onSave;
  final Function? onChanged;
  final double? borderRad;
  final Color? fillColor;
  final Color? borderColor;
  final Color? suffixIconColor;
  final Iterable<String>? autoFillHints;
  final bool autofocus;
  final bool centerText;
  final double btnCurve;
  final bool isNumber;
  final Color? hintColor;
  final AutovalidateMode? autovalidateMode;
  final String? initialValue;
  final int? maxLines;
  final int? minLines;

  const CustomTextField({
    Key? key,
    this.labelText,
    this.labelTextColor,
    this.suffixIcon,
    this.borderRad,
    this.preferWidget,
    this.suffixText,
    this.prefixText,
    this.onClickPsToggle,
    required this.keywordType,
    this.validate,
    this.obscureText = false,
    this.onFieldSubmit,
    this.textInputAction,
    this.readonly = false,
    this.focusNode,
    this.onSave,
    this.controller,
    this.onChanged,
    this.removePrefixIconDivider = false,
    this.isSmallText = false,
    this.autofocus = false,
    this.maxLength,
    this.hintText,
    this.fillColor,
    this.borderColor,
    this.onTap,
    this.centerText = false,
    this.suffixIconColor,
    this.autoFillHints,
    this.isDisabled = false,
    this.hintColor,
    this.isNumber = false,
    this.initialValue,
    this.autovalidateMode,
    this.maxLines,
    this.minLines,
    required this.btnCurve,
  }) : super(key: key);

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      decoration: BoxDecoration(
        border: Border.all(color: AppColors.borderColor),
        borderRadius: BorderRadius.all(
          Radius.circular(widget.btnCurve),
        ),
      ),
      // decoration: BoxDecoration(borderRadius: BorderRadius.circular(4.0)),
      child: TextFormField(
        minLines: widget.minLines ?? 1,
        maxLines: widget.maxLines ?? 1,
        autovalidateMode: widget.autovalidateMode,
        enabled: !widget.isDisabled,
        textAlign: widget.centerText ? TextAlign.center : TextAlign.start,
        autofocus: widget.autofocus,
        initialValue: widget.initialValue,
        scrollPadding:
            EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
        onChanged: widget.onChanged == null
            ? null
            : (newValue) => widget.onChanged!(newValue),
        controller: widget.controller,
        onSaved: widget.onSave == null
            ? null
            : (newValue) => widget.onSave!(newValue),
        focusNode: widget.focusNode,
        textInputAction: widget.textInputAction,
        onFieldSubmitted: (newValue) => widget.onFieldSubmit == null
            ? () {}
            : widget.onFieldSubmit!(newValue),
        validator: widget.validate == null
            ? (value) {
                if (value!.isEmpty) {
                  return 'Text Field is Empty';
                }
                return null;
              }
            : (newvalue) => widget.validate!(newvalue),
        keyboardType: widget.keywordType,
        readOnly: widget.readonly,
        onTap: widget.onTap,
        autofillHints: widget.autoFillHints,
        inputFormatters: [
          LengthLimitingTextInputFormatter(widget.maxLength),
          FilteringTextInputFormatter.deny(
            RegExp(
                r'(\u00a9|\u00ae|[\u2000-\u3300]|\ud83c[\ud000-\udfff]|\ud83d[\ud000-\udfff]|\ud83e[\ud000-\udfff])'),
          ),
          LengthLimitingTextInputFormatter(widget.maxLength),
          if (widget.isNumber)
            FilteringTextInputFormatter.allow(
              RegExp(r'[\d.\d]+$'),
            )
        ],
        obscureText: widget.obscureText,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.only(
            top: widget.isSmallText ? 0 : 8.h,
            left: widget.preferWidget == null ? 12.w : 12.w,
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(widget.borderRad ?? radius),
            borderSide: BorderSide(
              color: Theme.of(context).colorScheme.error,
              width: 1,
            ),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(widget.borderRad ?? radius),
            borderSide: BorderSide(
              color: Theme.of(context).colorScheme.error,
              width: 1,
            ),
          ),
          errorMaxLines: 3,
          labelText: widget.labelText,
          labelStyle: TextStyle(
            fontSize: widget.isSmallText ? 12.sp : 14.sp,
            color: widget.labelTextColor ?? Colors.grey.shade600,
            fontWeight: FontWeight.w400,
          ),
          hintText: widget.hintText,
          hintStyle: TextStyle(
            fontSize: widget.isSmallText ? 12.sp : 14.sp,
            color: widget.hintColor ?? Colors.grey.shade600,
            fontWeight: FontWeight.w400,
          ),
          suffixText: widget.suffixText,
          prefixText: widget.prefixText,
          suffixStyle: TextStyle(
            color: Colors.grey.shade600,
            fontSize: widget.isSmallText ? 12.sp : 14.sp,
          ),
          suffixIcon: widget.suffixText != null
              ? Padding(
                  padding: const EdgeInsets.only(top: 14, right: 24),
                  child: Text(
                    widget.suffixText!,
                    style: TextStyle(
                      color: Colors.grey.shade600,
                    ),
                  ),
                )
              : widget.suffixIcon != null
                  ? IconButton(
                      onPressed: widget.onClickPsToggle,
                      icon: Icon(
                        widget.suffixIcon,
                        color: widget.suffixIconColor ?? Colors.black,
                        size: 24.h,
                      ),
                      splashColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      focusColor: Colors.transparent,
                    )
                  : null,
          prefixIcon: widget.preferWidget == null
              ? null
              : widget.removePrefixIconDivider
                  ? widget.preferWidget
                  : SizedBox(
                      width: 0,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          widget.preferWidget!,
                          // Container(
                          //   height: 30,
                          //   width: 1,
                          //   color: Colors.grey,
                          // )
                        ],
                      ),
                    ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(widget.borderRad ?? radius),
            borderSide: BorderSide(
              color: widget.borderColor ?? Colors.transparent,
              width: 1,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(widget.borderRad ?? radius),
            borderSide: BorderSide(
              width: 1,
              color: widget.borderColor ?? Colors.transparent,
            ),
          ),
          disabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(widget.borderRad ?? radius),
            borderSide: BorderSide(
              color: widget.borderColor ?? Colors.transparent,
              width: 1,
            ),
          ),
          // fillColor: widget.fillColor ?? AppColors.bgColor,
          // filled: true,
        ),
      ),
    );
  }
}
