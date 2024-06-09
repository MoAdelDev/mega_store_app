import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mega_store_app/core/helpers/spacing.dart';
import 'package:mega_store_app/features/login/widgets/forget_password_form_and_submit.dart';
import 'package:mega_store_app/features/login/widgets/forget_password_logo_and_text.dart';

class ForgetPasswordScreen extends StatelessWidget {
  const ForgetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(
            horizontal: 20.w,
            vertical: 20.h,
          ),
          child: Column(
            children: [
              const ForgetPasswordLogoAndText(),
              verticalSpace(60),
              const ForgetPasswordFormAndSubmit(),
            ],
          ),
        ),
      ),
    );
  }
}
