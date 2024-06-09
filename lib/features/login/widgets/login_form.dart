import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mega_store_app/core/helpers/spacing.dart';
import 'package:mega_store_app/core/widgets/custom_text_field.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          CustomTextField(
            controller: TextEditingController(),
            hintText: 'Your Email',
            errorMsg: 'Please enter your email',
            keyboardType: TextInputType.emailAddress,
            textInputAction: TextInputAction.next,
            prefixIcon: Icons.email_outlined,
          ),
          verticalSpace(10),
          CustomTextField(
            controller: TextEditingController(),
            hintText: 'Your Password',
            errorMsg: 'Please enter your password',
            keyboardType: TextInputType.visiblePassword,
            textInputAction: TextInputAction.done,
            prefixIcon: CupertinoIcons.lock_fill,
          ),
        ],
      ),
    );
  }
}
