import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mega_store_app/core/helpers/extensions.dart';
import 'package:mega_store_app/core/helpers/spacing.dart';
import 'package:mega_store_app/core/widgets/custom_text.dart';
import 'package:mega_store_app/core/widgets/custom_text_button.dart';
import 'package:mega_store_app/features/login/widgets/login_form_and_submit.dart';
import 'package:mega_store_app/features/login/widgets/login_logo_and_text.dart';
import 'package:mega_store_app/features/login/widgets/login_or_text.dart';
import 'package:mega_store_app/features/login/widgets/login_with_thirdy_party.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

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
                const LoginLogoAndText(),
                verticalSpace(20),
                const LoginFormAndSubmit(),
                verticalSpace(16),
                const LoginOrText(),
                verticalSpace(16),
                const LoginWithThirdyParty(),
                verticalSpace(8),
                CustomTextButton(
                  onPressed: () {},
                  text: 'Forgot Password?',
                  textColor: context.colorScheme.primary,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Center(
                      child: CustomText(
                        'Don\'t have an account?',
                        style: context.textTheme.labelSmall,
                      ),
                    ),
                    CustomTextButton(
                      onPressed: () {},
                      text: 'Sign Up',
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
