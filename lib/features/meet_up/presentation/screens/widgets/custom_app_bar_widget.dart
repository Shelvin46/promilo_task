import 'package:flutter/material.dart';
import 'package:promilo/core/constants/text_style_constants.dart';

class CustomAppBarWidget extends StatelessWidget {
  const CustomAppBarWidget({
    super.key,
    this.title = "Individual Meetup",
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 10, top: 10),
      height: 65,
      decoration: const BoxDecoration(
        boxShadow: [],
        border: Border(
          bottom: BorderSide(
            color: Color.fromARGB(255, 219, 212, 212), // Color of the border
            width: 1.0, // Width of the border
          ),
        ),
      ),
      child: Row(
        children: [
          IconButton(
            icon: const Icon(Icons.arrow_back_ios, color: Colors.black),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          Text(
            title,
            style: TextStyleConstants.subtitle,
          ),
        ],
      ),
    );
  }
}
