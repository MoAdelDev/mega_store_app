import 'package:flutter/material.dart';
import 'package:mega_store_app/core/helpers/extensions.dart';
import 'package:mega_store_app/core/helpers/spacing.dart';
import 'package:mega_store_app/core/router/routes.dart';
import 'package:mega_store_app/core/widgets/custom_button.dart';
import 'package:mega_store_app/core/widgets/custom_text_field.dart';

class ForgetPasswordFormAndSubmit extends StatefulWidget {
  const ForgetPasswordFormAndSubmit({super.key});

  @override
  State<ForgetPasswordFormAndSubmit> createState() =>
      _ForgetPasswordFormAndSubmitState();
}

class _ForgetPasswordFormAndSubmitState
    extends State<ForgetPasswordFormAndSubmit> {
  final formKey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        children: [
          CustomTextField(
            hintText: 'Your Email',
            errorMsg: 'Please enter your email',
            keyboardType: TextInputType.emailAddress,
            textInputAction: TextInputAction.done,
            prefixIcon: Icons.email_outlined,
            onSubmit: (value) {
              FocusManager.instance.primaryFocus?.unfocus();
            },
            controller: emailController,
          ),
          verticalSpace(20),
          CustomButton(
            label: 'Send Code',
            onPressed: () {
              if (formKey.currentState!.validate()) {
                context.pushReplacment(Routes.login);
              }
            },
          ),
        ],
      ),
    );
  }
}
