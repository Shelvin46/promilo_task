import 'package:flutter/material.dart';
import 'package:promilo/core/constants/text_style_constants.dart';

class TermsAndConditionsWidget extends StatelessWidget {
  const TermsAndConditionsWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        style: TextStyleConstants.caption, // Default text style
        children: const <TextSpan>[
          TextSpan(
            text: 'By continuing you agree to our ',
            style: TextStyle(
              fontWeight: FontWeight.normal,
              color: Colors.grey,
            ),
          ),
          TextSpan(
            text: 'Terms of Service',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          TextSpan(
            text: ' and ',
            style: TextStyle(
              fontWeight: FontWeight.normal,
              color: Colors.grey,
            ),
          ),
          TextSpan(
            text: 'Privacy Policy',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
