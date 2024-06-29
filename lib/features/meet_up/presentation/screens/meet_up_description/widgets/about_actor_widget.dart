import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:flutter/material.dart';
import 'package:promilo/core/constants/text_style_constants.dart';
import 'package:promilo/features/meet_up/presentation/screens/meet_up_description/widgets/actor_fee_and_duration_show_widget.dart';
import 'package:promilo/features/meet_up/presentation/screens/meet_up_description/widgets/expanded_text_widget.dart';

class AboutActorWidget extends StatelessWidget {
  const AboutActorWidget({
    super.key,
    required this.aboutActress,
  });

  final String aboutActress;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Kalyani Priyadarshan",
          style: TextStyleConstants.smallTitle,
        ),
        4.heightBox,
        Text(
          "Indian Actress",
          style: TextStyleConstants.caption,
        ),
        10.heightBox,
        const ActorFeeAndDurationShowWidget(
          iconData: Icons.access_time,
          text: "Duration 20 Mins",
        ),
        15.heightBox,
        const ActorFeeAndDurationShowWidget(
          iconData: Icons.wallet,
          text: "Total Average Fees ₹9,999",
        ),
        15.heightBox,
        Text(
          "About",
          style: TextStyleConstants.smallTitle,
        ),
        4.heightBox,
        ExpandableText(text: aboutActress),
      ],
    ).paddingSymmetric(horizontal: 20);
  }
}
