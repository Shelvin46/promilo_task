import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:flutter/material.dart';
import 'package:promilo/core/constants/text_style_constants.dart';

class ExpandableText extends StatefulWidget {
  final String text;
  const ExpandableText({super.key, required this.text});

  @override
  State<ExpandableText> createState() => _ExpandableTextState();
}

class _ExpandableTextState extends State<ExpandableText> {
  late String firstHalf;
  late String secondHalf;

  bool hiddenText = true;
  double textHeight = 250; // Adjust based on your TextStyle and screen

  @override
  void initState() {
    super.initState();
    if (widget.text.length > textHeight) {
      firstHalf = widget.text.substring(0, textHeight.toInt());
      secondHalf =
          widget.text.substring(textHeight.toInt() + 1, widget.text.length);
    } else {
      firstHalf = widget.text;
      secondHalf = "";
    }
  }

  @override
  Widget build(BuildContext context) {
    return secondHalf.isEmpty
        ? Text(firstHalf, style: TextStyleConstants.caption)
        : Column(
            children: [
              Text(hiddenText ? ("$firstHalf...") : (firstHalf + secondHalf),
                  style: TextStyleConstants.caption),
              GestureDetector(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Text(hiddenText ? "See more" : "See less",
                        style: const TextStyle(color: Colors.blue)),
                  ],
                ),
                onTap: () {
                  setState(() {
                    hiddenText = !hiddenText;
                  });
                },
              ),
              10.heightBox,
            ],
          );
  }
}
