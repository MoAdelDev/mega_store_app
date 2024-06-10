import 'package:flutter/material.dart';
import 'package:mega_store_app/core/helpers/extensions.dart';
import 'package:mega_store_app/core/helpers/spacing.dart';
import 'package:mega_store_app/core/router/routes.dart';
import 'package:mega_store_app/core/widgets/custom_button.dart';
import 'package:mega_store_app/core/widgets/custom_text_field.dart';

class LoginFormAndSubmit extends StatefulWidget {
  const LoginFormAndSubmit({super.key});

  @override
  State<LoginFormAndSubmit> createState() => _LoginFormAndSubmitState();
}

class _LoginFormAndSubmitState extends State<LoginFormAndSubmit> {
  final formKey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        children: [
          CustomTextField(
            controller: emailController,
            hintText: 'Your Email',
            errorMsg: 'Please enter your email',
            keyboardType: TextInputType.emailAddress,
            textInputAction: TextInputAction.next,
            prefixIcon: Icons.email_outlined,
            onSubmit: (value) {
              FocusManager.instance.primaryFocus?.nextFocus();
            },
          ),
          verticalSpace(10),
          CustomTextField(
            controller: passwordController,
            hintText: 'Your Password',
            errorMsg: 'Please enter your password',
            keyboardType: TextInputType.visiblePassword,
            textInputAction: TextInputAction.done,
            prefixIcon: Icons.lock_outline,
            obscureText: true,
            onSubmit: (value) {
              FocusManager.instance.primaryFocus?.unfocus();
            },
          ),
          verticalSpace(10),
          CustomButton(
            label: 'Sign in',
            onPressed: () {
              if (formKey.currentState!.validate()) {
                context.pushAndRemoveUntil(Routes.home);
              }
            },
          ),
        ],
      ),
    );
  }
}
