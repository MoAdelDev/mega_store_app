import 'package:flutter/material.dart';
import 'package:mega_store_app/core/helpers/extensions.dart';
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
          cursorColor: context.colorScheme.secondary,
          textInputAction: textInputAction,
          decoration: InputDecoration(
            errorStyle: context.textTheme.bodyMedium?.copyWith(
              color: context.colorScheme.error,
            ),
            prefixIconColor:
                WidgetStateColor.resolveWith((Set<WidgetState> states) {
              if (states.contains(WidgetState.focused)) {
                return context.colorScheme.secondary;
              }
              if (states.contains(WidgetState.error)) {
                return context.colorScheme.error;
              }
              return context.colorScheme.tertiary;
            }),
            prefixIcon: prefixIcon != null ? Icon(prefixIcon) : null,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12.0),
              borderSide: BorderSide(color: context.colorScheme.secondary),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12.0),
              borderSide: const BorderSide(color: Color(0xffEBF0FF)),
            ),
            errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12.0),
              borderSide: BorderSide(
                color: context.colorScheme.error,
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12.0),
              borderSide: BorderSide(color: context.colorScheme.secondary),
            ),
            fillColor: const Color(0xffF7F8F9),
            filled: true,
            hintText: hintText,
            alignLabelWithHint: true,
            hintStyle: TextStyle(
              fontSize: 14.0,
              color: context.colorScheme.outlineVariant,
            ),
            suffixIcon: CustomTap(
              onTap: onSuffixIcon ?? () {},
              child: Icon(
                suffixIcon,
                color: suffixIconColor ?? context.colorScheme.outlineVariant,
              ),
            ),
            contentPadding: const EdgeInsets.symmetric(
              vertical: 15.0,
              horizontal: 10.0,
            ),
          ),
          style: context.textTheme.labelSmall,
          maxLines: maxLines,
          textAlign: TextAlign.start,
          obscureText: obscureText ?? false,
          validator: errorMsg == ''
              ? null
              : (value) {
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
