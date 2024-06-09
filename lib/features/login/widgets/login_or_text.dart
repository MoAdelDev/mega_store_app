import 'package:flutter/material.dart';
import 'package:mega_store_app/core/helpers/extensions.dart';
import 'package:mega_store_app/core/helpers/spacing.dart';
import 'package:mega_store_app/core/style/font_weight_helper.dart';
import 'package:mega_store_app/core/widgets/custom_text.dart';

class LoginOrText extends StatelessWidget {
  const LoginOrText({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            height: 1,
            color: context.colorScheme.outline,
          ),
        ),
        horizontalSpace(16),
        CustomText(
          'OR',
          style: context.textTheme.labelMedium,
          fontWeight: FontWeightHelper.bold,
        ),
        horizontalSpace(16),
        Expanded(
          child: Container(
            height: 1,
            color: context.colorScheme.outline,
          ),
        ),
      ],
    );
  }
}
