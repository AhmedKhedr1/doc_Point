import 'package:doc_point/core/theming/app_colors.dart';
import 'package:doc_point/core/theming/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppTextFormField extends StatelessWidget {
  const AppTextFormField({
    super.key,
    required this.hint,
    this.contentPadding,
    this.enabledBorder,
    this.focusedBorder,
    this.hintStyle,
    this.inputtextStyle,
    this.isObscureText,
    this.suffixIcon,
    this.backgroundColor,
  });
  final EdgeInsetsGeometry? contentPadding;
  final InputBorder? enabledBorder;
  final InputBorder? focusedBorder;
  final TextStyle? hintStyle;
  final TextStyle? inputtextStyle;
  final bool? isObscureText;
  final Widget? suffixIcon;
  final String hint;
  final Color? backgroundColor;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        filled: true,
        fillColor: backgroundColor ?? AppColors.moreLightGray,
        isDense: true,
        contentPadding:
            contentPadding ??
            EdgeInsets.symmetric(horizontal: 20.w, vertical: 16.h),
        enabledBorder:
            enabledBorder ??
            OutlineInputBorder(
              borderSide: BorderSide(color: AppColors.lighterGray, width: 1.3),
              borderRadius: BorderRadius.circular(16),
            ),
        focusedBorder:
            focusedBorder ??
            OutlineInputBorder(
              borderSide: BorderSide(color: AppColors.mainBlue, width: 1.3),
              borderRadius: BorderRadius.circular(16),
            ),
        hintText: hint,
        hintStyle: hintStyle ?? TextStyles.font14LightGrayRegular,
        suffixIcon: suffixIcon,
      ),
      obscureText: isObscureText ?? false,
      style: inputtextStyle ?? TextStyles.font14DarkBlueMedium,
    );
  }
}
