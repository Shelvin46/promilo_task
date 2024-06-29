import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomSvgPicture extends StatelessWidget {
  const CustomSvgPicture({
    super.key,
    required this.imagePath,
    this.height = 40,
    this.width = 40,
    this.color = Colors.black,
    this.isSocialMediaIcon = false,
  });
  final String imagePath;
  final double height;
  final double width;
  final Color color;
  final bool isSocialMediaIcon;
  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      imagePath,
      height: height,
      width: width,
      colorFilter:
          isSocialMediaIcon ? null : ColorFilter.mode(color, BlendMode.srcIn),
    );
  }
}
