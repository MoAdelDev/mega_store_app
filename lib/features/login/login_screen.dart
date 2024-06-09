import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mega_store_app/core/helpers/spacing.dart';
import 'package:mega_store_app/features/login/widgets/login_form.dart';
import 'package:mega_store_app/features/login/widgets/login_logo_and_text.dart';

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
                const LoginForm(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
