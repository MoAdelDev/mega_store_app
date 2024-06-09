import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mega_store_app/core/helpers/extensions.dart';
import 'package:mega_store_app/core/helpers/spacing.dart';
import 'package:mega_store_app/core/router/routes.dart';
import 'package:mega_store_app/core/widgets/custom_text.dart';
import 'package:mega_store_app/core/widgets/custom_text_button.dart';
import 'package:mega_store_app/features/register/widgets/register_form_and_submit.dart';
import 'package:mega_store_app/features/register/widgets/register_logo_and_text.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(
            horizontal: 20.w,
            vertical: 20.h,
          ),
          child: SizedBox(
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const RegisterLogoAndText(),
                verticalSpace(20),
                const RegisterFormAndSubmit(),
                verticalSpace(8),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Center(
                      child: CustomText(
                        'Already have an account?',
                        style: context.textTheme.labelSmall,
                      ),
                    ),
                    CustomTextButton(
                      onPressed: () {
                        context.pushReplacment(Routes.login);
                      },
                      text: 'Sign In',
                      textColor: context.colorScheme.primary,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
