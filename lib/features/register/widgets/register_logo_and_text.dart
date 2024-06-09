import 'package:flutter/material.dart';
import 'package:mega_store_app/core/helpers/extensions.dart';
import 'package:mega_store_app/core/helpers/spacing.dart';
import 'package:mega_store_app/core/widgets/custom_text.dart';

class RegisterLogoAndText extends StatelessWidget {
  const RegisterLogoAndText({super.key});

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
          'Let’s Get Started',
          style: context.textTheme.titleSmall,
        ),
        verticalSpace(10),
        CustomText(
          'Create an new account',
          style: context.textTheme.labelSmall,
        ),
      ],
    );
  }
}
