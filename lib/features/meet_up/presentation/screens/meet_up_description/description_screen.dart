import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:flutter/material.dart';
import 'package:promilo/core/extensions/media_query_extension.dart';
import 'package:promilo/features/meet_up/presentation/screens/meet_up_description/widgets/about_actor_widget.dart';
import 'package:promilo/features/meet_up/presentation/screens/meet_up_description/widgets/description_image_widget.dart';
import 'package:promilo/features/meet_up/presentation/screens/meet_up_description/widgets/rate_and_other_info_widget.dart';
import 'package:promilo/features/meet_up/presentation/screens/widgets/custom_app_bar_widget.dart';
import 'package:promilo/features/widgets/base_widgets.dart';

///[MeetUpDescriptionScreen] is the screen that shows the description of the meet up.
///
class MeetUpDescriptionScreen extends StatefulWidget {
  const MeetUpDescriptionScreen({super.key});

  @override
  State<MeetUpDescriptionScreen> createState() =>
      _MeetUpDescriptionScreenState();
}

class _MeetUpDescriptionScreenState extends State<MeetUpDescriptionScreen> {
  final String aboutActress =
      "Kalyani Priyadarshan (born 5 April 1993) is an Indian actress who predominantly appears in Malayalam, Tamil and Telugu films. She began her film career as an assistant production designer, and made her acting debut in the Telugu film Hello (2017). She won the Filmfare Award for Best Female Debut and the SIIMA Award for Best Telugu Female Debut for her performance. Priyadarshan has acted in several successful films including Chitralahari (2019), Varane Avashyamund (2020), Maanaadu (2021), Hridayam (2022), Bro Daddy (2022), and Thallumaala (2022).";

  @override
  Widget build(BuildContext context) {
    return BaseWidget(
        child: ListView(
      children: [
        const CustomAppBarWidget(
          title: "Description",
        ),
        10.heightBox,
        Column(
          children: [
            Container(
              alignment: Alignment.center,
              height: context.largeHeight,
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 215, 211, 211),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(15.0),
                  topRight: Radius.circular(15.0),
                  bottomLeft: Radius.circular(5.0),
                  bottomRight: Radius.circular(5.0),
                ),
              ),
              child: const DescriptionImageWidget(),
            ),
          ],
        ).paddingSymmetric(horizontal: 20),
        15.heightBox,
        const RateAndOtherInfoWidget().paddingSymmetric(horizontal: 20),
        SizedBox(height: context.mediumGap),
        AboutActorWidget(aboutActress: aboutActress)
      ],
    ));
  }
}
