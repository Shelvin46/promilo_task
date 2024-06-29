import 'package:flutter/widgets.dart';

///[MediaQueryValues] is an extension for [BuildContext] that provides responsive height, width, and gaps.
///It is used to make the UI responsive.
extension MediaQueryValues on BuildContext {
  double get screenHeight => MediaQuery.of(this).size.height;
  double get screenWidth => MediaQuery.of(this).size.width;

  // Example usage for responsive height and width
  double responsiveHeight(double percentage) => screenHeight * percentage;
  double responsiveWidth(double percentage) => screenWidth * percentage;

  // Example usage for responsive gaps
  double get smallGap => responsiveHeight(0.02);
  double get mediumGap => responsiveHeight(0.04);
  double get largeGap => responsiveHeight(0.08);
  double get largeHeight => responsiveHeight(0.465);
  double get secondLargeHeight => responsiveHeight(0.4);
}
