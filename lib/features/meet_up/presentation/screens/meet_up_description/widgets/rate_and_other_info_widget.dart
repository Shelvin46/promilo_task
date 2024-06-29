import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:flutter/material.dart';
import 'package:promilo/core/constants/text_style_constants.dart';
import 'package:promilo/features/widgets/custom_svg_image_widget.dart';

class RateAndOtherInfoWidget extends StatelessWidget {
  const RateAndOtherInfoWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const CustomSvgPicture(
          color: Color.fromARGB(255, 5, 129, 142),
          height: 24,
          width: 24,
          imagePath: "assets/description/bookmark-svgrepo-com.svg",
        ),
        7.widthBox,
        Text("1034", style: TextStyleConstants.caption),
        7.widthBox,
        const CustomSvgPicture(
          color: Color.fromARGB(255, 5, 129, 142),
          height: 24,
          width: 24,
          imagePath: "assets/description/heart-alt-svgrepo-com.svg",
        ),
        7.widthBox,
        Text("1034", style: TextStyleConstants.caption),
        7.widthBox,
        Container(
          padding: const EdgeInsets.only(left: 7),
          height: 25,
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 215, 211, 211),
            borderRadius: BorderRadius.circular(15),
          ),
          child: Row(
            children: [
              for (int i = 0; i < 5; i++)
                Padding(
                  padding: const EdgeInsets.only(right: 7),
                  child: Icon(
                    Icons.star,
                    color: i == 3
                        ? const Color.fromARGB(255, 159, 191, 194)
                        : i == 4
                            ? Colors.white
                            : const Color.fromARGB(255, 5, 129, 142),
                    size: 18,
                  ),
                ),
            ],
          ),
        ),
        7.widthBox,
        Text("3.2", style: TextStyleConstants.caption),
      ],
    );
  }
}
