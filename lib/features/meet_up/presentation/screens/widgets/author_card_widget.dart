import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:promilo/core/constants/text_style_constants.dart';
import 'package:promilo/features/widgets/button_widget.dart';

class AuthorCard extends StatefulWidget {
  const AuthorCard({super.key});

  @override
  State<AuthorCard> createState() => _AuthorCardState();
}

class _AuthorCardState extends State<AuthorCard> {
  final List<String> authorImages = [
    "https://img.freepik.com/free-vector/big-meeting-room-concept-illustration_114360-24589.jpg",
    "https://thumbs.dreamstime.com/b/business-meeting-silhouette-sunset-37284204.jpg",
    "https://img.freepik.com/free-photo/people-business-meeting-high-angle_23-2148911819.jpg",
    "https://img.freepik.com/free-vector/big-meeting-room-concept-illustration_114360-24589.jpg",
    "https://thumbs.dreamstime.com/b/business-meeting-silhouette-sunset-37284204.jpg",
    "https://img.freepik.com/free-photo/people-business-meeting-high-angle_23-2148911819.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 15, top: 10, right: 15),
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.grey,
        ),
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Container(
                height: 40,
                width: 40,
                padding: const EdgeInsets.all(2),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: Colors.black,
                    width: 2.0,
                  ),
                ),
                child: const Icon(
                  Icons.edit,
                  color: Color(0xFF00334E),
                ),
              ),
              10.widthBox,
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Author',
                    style: TextStyleConstants.smallTitle,
                  ),
                  Text('1,028 Meetups', style: TextStyleConstants.caption),
                ],
              ),
            ],
          ),
          8.heightBox,
          Container(
            height: 1,
            color: Colors.grey,
          ),
          10.heightBox,
          SizedBox(
            height: 60,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: authorImages.length,
              itemBuilder: (context, index) {
                final double xOffset = index * -15.0;
                return Transform.translate(
                  offset: Offset(xOffset, 0),
                  child: Container(
                    height: 50,
                    width: 50,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                    ),
                    child: CircleAvatar(
                      backgroundImage: CachedNetworkImageProvider(
                        authorImages[index],
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
          10.heightBox,
          const ButtonWidget(
            height: 30,
            width: 110,
            text: "See more",
          ).alignAtTopRight()
        ],
      ),
    );
  }
}
