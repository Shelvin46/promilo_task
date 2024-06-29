import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:flutter/material.dart';
import 'package:promilo/core/constants/text_style_constants.dart';

class ActorFeeAndDurationShowWidget extends StatelessWidget {
  const ActorFeeAndDurationShowWidget(
      {super.key, required this.iconData, required this.text});

  final IconData iconData;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          iconData,
          // Icons.access_time,
          size: 18,
        ),
        4.widthBox,
        Text(
          text,
          style: TextStyleConstants.caption,
        ),
      ],
    );
  }
}
