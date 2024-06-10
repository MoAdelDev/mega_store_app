import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mega_store_app/core/helpers/extensions.dart';
import 'package:mega_store_app/core/style/font_weight_helper.dart';
import 'package:mega_store_app/core/widgets/custom_tap.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final IconData? suffixIcon;
  final IconData? prefixIcon;
  final VoidCallback? onSuffixIcon;
  final Function(String)? onSubmit;
  final Function(String)? onChange;
  final bool? obscureText;
  final String errorMsg;
  final TextInputType keyboardType;
  final TextInputAction textInputAction;
  final Function()? onTap;
  final bool readOnly;
  final Color? suffixIconColor;
  final int? maxLines;
  final String? Function(String?)? validator;

  const CustomTextField({
    super.key,
    required this.controller,
    required this.hintText,
    this.obscureText,
    required this.errorMsg,
    required this.keyboardType,
    this.onSuffixIcon,
    this.suffixIcon,
    this.onChange,
    this.onSubmit,
    required this.textInputAction,
    this.prefixIcon,
    this.onTap,
    this.readOnly = false,
    this.suffixIconColor,
    this.maxLines = 1,
    this.validator,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextFormField(
          controller: controller,
          keyboardType: keyboardType,
          onFieldSubmitted: onSubmit,
          onTap: onTap,
          readOnly: readOnly,
          cursorColor: context.colorScheme.primaryContainer,
          textInputAction: textInputAction,
          decoration: InputDecoration(
            errorStyle: context.textTheme.bodyMedium?.copyWith(
              color: context.colorScheme.error,
            ),
            prefixIconColor:
                WidgetStateColor.resolveWith((Set<WidgetState> states) {
              if (states.contains(WidgetState.focused)) {
                return context.colorScheme.primaryContainer;
              }
              if (states.contains(WidgetState.error)) {
                return context.colorScheme.error;
              }
              return context.colorScheme.tertiary;
            }),
            prefixIcon: prefixIcon != null
                ? Icon(
                    prefixIcon,
                  )
                : null,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5.0),
              borderSide:
                  BorderSide(color: context.colorScheme.primaryContainer),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5.0),
              borderSide: BorderSide(color: context.colorScheme.outline),
            ),
            errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5.0),
              borderSide: BorderSide(
                color: context.colorScheme.error,
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5.0),
              borderSide: BorderSide(
                color: context.colorScheme.primaryContainer,
              ),
            ),
            fillColor: Colors.transparent,
            filled: true,
            hintText: hintText,
            hintStyle: context.textTheme.labelSmall,
            suffixIcon: CustomTap(
              onTap: onSuffixIcon ?? () {},
              child: Icon(
                suffixIcon,
                color: suffixIconColor ?? context.colorScheme.tertiary,
              ),
            ),
            contentPadding: EdgeInsets.symmetric(
              vertical: 15.0.h,
              horizontal: 10.0.w,
            ),
          ),
          style: context.textTheme.labelSmall?.copyWith(
            fontWeight: FontWeightHelper.bold,
          ),
          maxLines: maxLines,
          textAlign: TextAlign.start,
          obscureText: obscureText ?? false,
          validator: validator ??
              (value) {
                if (value == null || value.isEmpty) {
                  return errorMsg;
                }
                return null;
              },
          onChanged: onChange,
        ),
      ],
    );
  }
}
