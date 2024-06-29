import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:flutter/material.dart';
import 'package:promilo/core/constants/text_style_constants.dart';

class LoginFieldWidget extends StatelessWidget {
  const LoginFieldWidget({
    super.key,
    required this.instruction1,
    required this.instruction2,
    required this.hintText,
    this.isPassword = false,
    required this.controller,
    required this.validator,
    this.focusNode,
  });

  final String instruction1;
  final String instruction2;
  final String hintText;
  final TextEditingController controller;
  final String? Function(String?)? validator;
  final FocusNode? focusNode;

  final bool isPassword;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "   $instruction1",
          style: TextStyleConstants.body,
        ),
        5.heightBox,
        TextFormField(
          validator: validator,
          controller: controller,
          focusNode: focusNode,
          decoration: InputDecoration(
            labelText: hintText,
            labelStyle: TextStyleConstants.caption,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ),
        if (isPassword == false)
          Column(
            children: [
              5.heightBox,
              Text(
                instruction2,
                style: TextStyleConstants.inputInfo,
              ).alignAtBottomRight(),
            ],
          )
        else
          Row(
            children: [
              Checkbox(
                side: const BorderSide(
                  color: Color.fromARGB(
                    255,
                    102,
                    102,
                    102,
                  ),
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(3),
                ),
                value: false,
                onChanged: (value) {},
              ),
              Text(
                "Remember Me",
                style: TextStyleConstants.caption,
              ),
              const Spacer(),
              Text(
                instruction2,
                style: TextStyleConstants.inputInfo,
              )
            ],
          ),
      ],
    );
  }
}
