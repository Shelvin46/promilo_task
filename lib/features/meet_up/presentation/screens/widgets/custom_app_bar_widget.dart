import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:flutter/material.dart';
import 'package:promilo/core/constants/text_style_constants.dart';

class CustomAppBarWidget extends StatelessWidget {
  const CustomAppBarWidget({
    super.key,
    this.title = "Individual Meetup",
    this.fromMainScreen = false,
  });

  final String title;

  final bool fromMainScreen;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: fromMainScreen ? 20 : 10, top: 10),
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
          if (fromMainScreen)
            const SizedBox.shrink()
          else
            IconButton(
              icon: const Icon(Icons.arrow_back_ios, color: Colors.black),
              onPressed: () {
                context.pop();
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
