import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:flutter/material.dart';
import 'package:promilo/core/constants/text_style_constants.dart';

class CustomDivider extends StatelessWidget {
  const CustomDivider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 0.5,
          color: Colors.grey,
        ).flexible(),
        Text("  or  ", style: TextStyleConstants.subtitle),
        Container(
          height: 0.5,
          color: Colors.grey,
        ).flexible(),
      ],
    );
  }
}
