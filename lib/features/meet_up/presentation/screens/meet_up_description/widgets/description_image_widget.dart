import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:promilo/core/extensions/media_query_extension.dart';
import 'package:promilo/features/widgets/custom_svg_image_widget.dart';
import 'package:share_plus/share_plus.dart';

class DescriptionImageWidget extends StatefulWidget {
  const DescriptionImageWidget({
    super.key,
  });

  @override
  State<DescriptionImageWidget> createState() => _DescriptionImageWidgetState();
}

class _DescriptionImageWidgetState extends State<DescriptionImageWidget> {
  final List<String> images = [
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ6r13QTQ4aseWjXbx1quPMpTJfGMmHMiOXCg&s",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSfgCE7zJKbKJMP3RuDOy_iqJRCNb5_PRIKEg&s",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcROrjzUULRU3-ur9znh_H5LbcOGPx_s8I4mnA&s",
  ];

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          alignment: Alignment.bottomCenter,
          children: [
            CarouselSlider(
              options: CarouselOptions(
                height: context.secondLargeHeight,
                viewportFraction: 1.0,
                onPageChanged: (index, reason) {
                  setState(() {
                    currentIndex = index;
                  });
                },
              ),
              items: images
                  .map(
                    (item) => SizedBox(
                      child: ClipRRect(
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(15.0),
                          topRight: Radius.circular(15.0),
                          bottomLeft: Radius.circular(10.0),
                          bottomRight: Radius.circular(10.0),
                        ),
                        child: CachedNetworkImage(
                          imageUrl: item,
                          fit: BoxFit.fill,
                          height: context.secondLargeHeight,
                          width: context.width,
                        ),
                      ),
                    ),
                  )
                  .toList(),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: images.asMap().entries.map((entry) {
                return GestureDetector(
                  onTap: () =>
                      {}, // Optionally, add onTap functionality to navigate to the corresponding image
                  child: Container(
                    width: 12.0,
                    height: 12.0,
                    margin: const EdgeInsets.symmetric(horizontal: 4.0),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: currentIndex == entry.key
                          ? Colors.white
                          : Colors.grey,
                    ),
                  ),
                );
              }).toList(),
            ).paddingOnly(bottom: 10),
          ],
        ),
        const Spacer(),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const CustomSvgPicture(
              imagePath: "assets/description/download-01-svgrepo-com.svg",
              height: 30,
              width: 30,
            ),
            const CustomSvgPicture(
              imagePath: "assets/description/bookmark-svgrepo-com.svg",
              height: 30,
              width: 30,
            ),
            const CustomSvgPicture(
              imagePath: "assets/description/heart-alt-svgrepo-com.svg",
              height: 30,
              width: 30,
            ),
            const CustomSvgPicture(
              imagePath: "assets/description/square-dashed-svgrepo-com.svg",
              height: 30,
              width: 30,
            ),
            const CustomSvgPicture(
              imagePath: "assets/description/star-svgrepo-com.svg",
              height: 30,
              width: 30,
            ),
            GestureDetector(
              onTap: () {
                // write the share function from share_plus package

                Share.share(images[currentIndex]);
              },
              child: const CustomSvgPicture(
                imagePath: "assets/description/share-svgrepo-com.svg",
                height: 30,
                width: 30,
              ),
            ),
          ],
        ).paddingOnly(left: 15, right: 15),
        const Spacer()
      ],
    );
  }
}
