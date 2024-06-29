import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:flutter/material.dart';
import 'package:promilo/features/authentication/presentation/screens/widgets/login_field_widget.dart';
import 'package:promilo/features/authentication/presentation/utils/form_validation.dart';
import 'package:promilo/service_locator.dart';

class LoginFields extends StatelessWidget {
  const LoginFields({
    super.key,
    required this.emailController,
    required this.passwordController,
    required this.emailFocusNode,
    required this.passwordFocusNode,
  });

  final TextEditingController emailController;
  final TextEditingController passwordController;
  final FocusNode emailFocusNode;
  final FocusNode passwordFocusNode;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          LoginFieldWidget(
            validator: locator<FormFieldValidateClass>().isValidEmail,
            controller: emailController,
            focusNode: emailFocusNode,
            instruction1: "Please Sign in to continue",
            instruction2: "Sign In With OTP",
            hintText: "Enter Email or Mob No",
          ),
          // Spacer(),
          15.heightBox,
          LoginFieldWidget(
            validator: locator<FormFieldValidateClass>().validatePassword,
            controller: passwordController,
            focusNode: passwordFocusNode,
            instruction1: "Password",
            instruction2: "Forget Password?",
            hintText: "Enter Password",
            isPassword: true,
          ),
          // need a checkbox
          15.heightBox,
        ],
      ),
    );
  }
}
