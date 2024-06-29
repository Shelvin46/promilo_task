import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:flutter/material.dart';

import 'package:promilo/features/widgets/custom_svg_image_widget.dart';

class SocialMediaLoginOptions extends StatelessWidget {
  const SocialMediaLoginOptions({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const CustomSvgPicture(
          isSocialMediaIcon: true,
          imagePath: "assets/google-color-svgrepo-com.svg",
        ),
        15.widthBox,
        ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: const CustomSvgPicture(
            isSocialMediaIcon: true,
            imagePath: "assets/facebook-color-svgrepo-com.svg",
          ),
        ),
        15.widthBox,
        const CustomSvgPicture(
          isSocialMediaIcon: true,
          imagePath: "assets/instagram-2-1-logo-svgrepo-com.svg",
        ),
        15.widthBox,
        const CustomSvgPicture(
          isSocialMediaIcon: true,
          imagePath: "assets/whatsapp-icon-logo-svgrepo-com.svg",
        ),
      ],
    );
  }
}
