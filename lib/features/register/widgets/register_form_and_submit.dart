import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mega_store_app/core/helpers/spacing.dart';
import 'package:mega_store_app/core/widgets/custom_button.dart';
import 'package:mega_store_app/core/widgets/custom_text_field.dart';

class RegisterFormAndSubmit extends StatefulWidget {
  const RegisterFormAndSubmit({super.key});

  @override
  State<RegisterFormAndSubmit> createState() => _RegisterFormAndSubmitState();
}

class _RegisterFormAndSubmitState extends State<RegisterFormAndSubmit> {
  final formKey = GlobalKey<FormState>();
  final fullNameController = TextEditingController();
  final phoneController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        children: [
          CustomTextField(
            controller: fullNameController,
            hintText: 'Full Name',
            errorMsg: 'Please enter your full name',
            keyboardType: TextInputType.name,
            textInputAction: TextInputAction.next,
            prefixIcon: CupertinoIcons.person,
            onSubmit: (value) {
              FocusManager.instance.primaryFocus?.nextFocus();
            },
          ),
          verticalSpace(10),
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
            controller: phoneController,
            hintText: 'Your Phone',
            errorMsg: 'Please enter your phone',
            keyboardType: TextInputType.phone,
            textInputAction: TextInputAction.next,
            prefixIcon: Icons.phone,
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
          CustomTextField(
            controller: confirmPasswordController,
            hintText: 'Your Confirm Password',
            errorMsg: 'Please enter your confirm password',
            keyboardType: TextInputType.visiblePassword,
            textInputAction: TextInputAction.done,
            prefixIcon: Icons.lock_outline,
            obscureText: true,
            onSubmit: (value) {
              FocusManager.instance.primaryFocus?.unfocus();
            },
            validator: (p0) {
              if (p0 != passwordController.text) {
                return 'Password does not match';
              }
              return null;
            },
          ),
          verticalSpace(10),
          CustomButton(
            label: 'Sign Up',
            onPressed: () {
              if (formKey.currentState!.validate()) {}
            },
          ),
        ],
      ),
    );
  }
}
