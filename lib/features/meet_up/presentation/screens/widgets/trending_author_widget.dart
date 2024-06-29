import 'package:flutter/material.dart';

import 'package:promilo/features/meet_up/presentation/screens/widgets/author_card_widget.dart';

class TrendingAuthorsWidget extends StatelessWidget {
  const TrendingAuthorsWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 190,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.only(),
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(right: 16.0),
            child: GestureDetector(onTap: () {}, child: const AuthorCard()),
          );
        },
        itemCount: 5,
        itemExtent: MediaQuery.of(context).size.width * 0.8,
      ),
    );
  }
}
