import 'package:flutter/material.dart';
import 'package:promilo/core/constants/text_style_constants.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({
    super.key,
    this.text = "Submit",
    this.height = 55,
    this.width = double.infinity,
    this.color = const Color.fromARGB(255, 10, 81, 157),
  });
  final String text;

  final double height;
  final double width;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Center(
        child: Text(text, style: TextStyleConstants.button),
      ),
    );
  }
}
