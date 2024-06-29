import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:flutter/material.dart';
import 'package:promilo/core/constants/text_style_constants.dart';
import 'package:promilo/core/extensions/media_query_extension.dart';
import 'package:promilo/features/meet_up/presentation/screens/widgets/custom_app_bar_widget.dart';
import 'package:promilo/features/meet_up/presentation/screens/widgets/search_bar.dart';
import 'package:promilo/features/meet_up/presentation/screens/widgets/slider_widget.dart';
import 'package:promilo/features/meet_up/presentation/screens/widgets/top_trending_list_view_widget.dart';
import 'package:promilo/features/meet_up/presentation/screens/widgets/trending_author_widget.dart';
import 'package:promilo/features/widgets/base_widgets.dart';

class MeetUpScreen extends StatefulWidget {
  const MeetUpScreen({super.key});

  @override
  State<MeetUpScreen> createState() => _MeetUpScreenState();
}

class _MeetUpScreenState extends State<MeetUpScreen> {
  List<String> sliderImages = [
    "https://img.freepik.com/free-vector/big-meeting-room-concept-illustration_114360-24589.jpg",
    "https://thumbs.dreamstime.com/b/business-meeting-silhouette-sunset-37284204.jpg",
    "https://img.freepik.com/free-photo/people-business-meeting-high-angle_23-2148911819.jpg",
  ];

  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return BaseWidget(
        child: ListView(
      children: [
        const CustomAppBarWidget(
          fromMainScreen: true,
        ),
        15.heightBox,
        Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SearchWidget().paddingOnly(right: 20),
              SizedBox(height: context.smallGap),
              SliderWidget(
                onTap: (index) {
                  setState(() {
                    _currentIndex = index;
                  });
                },
                sliderImages: sliderImages,
                currentIndex: _currentIndex,
              ).paddingOnly(right: 20),
              SizedBox(height: context.smallGap),
              Text(
                "Trending Popular Peoples",
                style: TextStyleConstants.smallTitle,
              ),
              10.heightBox,
              const TrendingAuthorsWidget(),
              SizedBox(height: context.mediumGap),
              Text(
                "Top Trending Authors",
                style: TextStyleConstants.smallTitle,
              ),
              10.heightBox,
              const TopTrendingAuthorsListViewWidget(),
              SizedBox(height: context.smallGap),
            ],
          ),
        )
      ],
    ));
  }
}
