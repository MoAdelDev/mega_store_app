import 'package:flutter/material.dart';
import 'package:mega_store_app/core/helpers/extensions.dart';
import 'package:mega_store_app/core/helpers/spacing.dart';
import 'package:mega_store_app/core/widgets/custom_text.dart';

class ForgetPasswordLogoAndText extends StatelessWidget {
  const ForgetPasswordLogoAndText({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          'assets/images/logo.png',
          fit: BoxFit.cover,
        ),
        verticalSpace(20),
        CustomText(
          'Forget Password',
          style: context.textTheme.titleSmall,
        ),
        verticalSpace(10),
        CustomText(
          'Add your email to send code ',
          style: context.textTheme.labelSmall,
        ),
      ],
    );
  }
}
