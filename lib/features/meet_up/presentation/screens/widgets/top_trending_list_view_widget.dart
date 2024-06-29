import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:promilo/core/extensions/page_transition_extension.dart';
import 'package:promilo/features/meet_up/presentation/screens/meet_up_description/description_screen.dart';
import 'package:promilo/features/meet_up/presentation/screens/widgets/top_trending_author_card_widget.dart';

class TopTrendingAuthorsListViewWidget extends StatefulWidget {
  const TopTrendingAuthorsListViewWidget({
    super.key,
  });

  @override
  State<TopTrendingAuthorsListViewWidget> createState() =>
      _TopTrendingAuthorsListViewWidgetState();
}

class _TopTrendingAuthorsListViewWidgetState
    extends State<TopTrendingAuthorsListViewWidget> {
  var topAuthorsImage = [
    "https://img.freepik.com/free-photo/people-business-meeting-high-angle_23-2148911819.jpg",
    "https://img.freepik.com/free-photo/people-business-meeting-high-angle_23-2148911819.jpg",
    "https://img.freepik.com/free-photo/people-business-meeting-high-angle_23-2148911819.jpg",
    "https://img.freepik.com/free-photo/people-business-meeting-high-angle_23-2148911819.jpg",
    "https://img.freepik.com/free-photo/people-business-meeting-high-angle_23-2148911819.jpg"
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 190,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.only(
                right: 16.0,
              ),
              child: GestureDetector(
                onTap: () {
                  context.pushWithTransition(const MeetUpDescriptionScreen(),
                      PageTransitionType.rightToLeft);
                },
                child: TopTrendingAuthorsCardWidget(
                  image: topAuthorsImage[index],
                  index: index,
                ),
              ),
            );
          },
          itemCount: topAuthorsImage.length,
          itemExtent: MediaQuery.of(context).size.width * 0.46),
    );
  }
}
