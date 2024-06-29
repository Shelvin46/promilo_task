import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:flutter/material.dart';
import 'package:promilo/core/constants/text_style_constants.dart';
import 'package:promilo/features/widgets/custom_svg_image_widget.dart';

class SearchWidget extends StatelessWidget {
  const SearchWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.black,
        ),
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Row(
        children: <Widget>[
          15.widthBox,
          const CustomSvgPicture(
            height: 25,
            width: 25,
            imagePath: "assets/search-alt-2-svgrepo-com.svg",
          ),
          5.widthBox,
          Expanded(
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Search',
                border: InputBorder.none,
                hintStyle: TextStyleConstants.caption,
              ),
            ),
          ),
          const CustomSvgPicture(
            height: 25,
            width: 25,
            imagePath: "assets/mic-svgrepo-com.svg",
          ),
          15.widthBox,
        ],
      ),
    );
  }
}
