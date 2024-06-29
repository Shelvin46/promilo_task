import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:flutter/material.dart';
import 'package:promilo/core/constants/text_style_constants.dart';

class LoginAndSignUoOptions extends StatelessWidget {
  const LoginAndSignUoOptions({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Business User? ",
              style: TextStyleConstants.caption,
            ),
            5.heightBox,
            Text(
              "Login Here",
              style: TextStyleConstants.inputInfo,
            ),
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              "Don't have an account",
              style: TextStyleConstants.caption,
            ),
            5.heightBox,
            Text(
              "Sign Up",
              style: TextStyleConstants.inputInfo,
            )
          ],
        )
      ],
    );
  }
}
