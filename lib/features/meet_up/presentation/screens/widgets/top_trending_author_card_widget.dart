import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import 'package:promilo/core/constants/text_style_constants.dart';

class TopTrendingAuthorsCardWidget extends StatelessWidget {
  const TopTrendingAuthorsCardWidget({
    super.key,
    required this.image,
    required this.index,
  });

  final String image;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 190,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.0),
        image: DecorationImage(
          image: CachedNetworkImageProvider(
            image,
          ),
          fit: BoxFit.cover,
        ),
      ),
      child: Stack(
        alignment: Alignment.bottomRight,
        children: [
          Container(
            height: 50,
            width: 50,
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(8.0),
                bottomRight: Radius.circular(8.0),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("0${index + 1}", style: TextStyleConstants.title),
              ],
            ),
          )
        ],
      ),
    );
  }
}
