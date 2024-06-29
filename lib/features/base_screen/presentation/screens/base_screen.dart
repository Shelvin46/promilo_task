import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:flutter/material.dart';
import 'package:promilo/features/meet_up/presentation/screens/meet_up_screen.dart';
import 'package:promilo/features/widgets/custom_svg_image_widget.dart';

class BaseScreen extends StatefulWidget {
  const BaseScreen({super.key});

  @override
  State<BaseScreen> createState() => _BaseScreenState();
}

class _BaseScreenState extends State<BaseScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: const MeetUpScreen(),
        bottomNavigationBar: SafeArea(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                  enableFeedback: false,
                  onPressed: () {},
                  icon: const RootBottomNavigationBarIcon(
                    image: "assets/home-1-svgrepo-com.svg",
                    pageName: "Home",
                    iconHeight: 20,
                    iconWidth: 20,
                  )),
              IconButton(
                  enableFeedback: false,
                  onPressed: () {},
                  icon: const RootBottomNavigationBarIcon(
                    iconHeight: 20,
                    iconWidth: 20,
                    image:
                        "assets/four-squares-button-of-view-options-svgrepo-com (1).svg",
                    pageName: "Prolet",
                  )),
              IconButton(
                  enableFeedback: false,
                  onPressed: () {},
                  icon: const RootBottomNavigationBarIcon(
                    image: "assets/handshake-solid-svgrepo-com.svg",
                    pageName: "Meetup",
                    color: Color.fromARGB(255, 5, 129, 142),
                    fontColor: Color.fromARGB(255, 5, 129, 142),
                  )),
              IconButton(
                  enableFeedback: false,
                  onPressed: () {},
                  icon: const RootBottomNavigationBarIcon(
                    image: "assets/folder-search-svgrepo-com (1).svg",
                    pageName: 'Explore',
                  )),
              IconButton(
                  enableFeedback: false,
                  onPressed: () {},
                  icon: const RootBottomNavigationBarIcon(
                    image: "assets/user-svgrepo-com.svg",
                    pageName: "Account",
                  )),
            ],
          ),
        ));
  }
}

class RootBottomNavigationBarIcon extends StatelessWidget {
  const RootBottomNavigationBarIcon({
    super.key,
    required this.image,
    required this.pageName,
    this.iconHeight = 25,
    this.iconWidth = 25,
    this.color = Colors.black,
    this.fontColor = Colors.black,
  });

  final String image;
  final String pageName;
  final double iconHeight;
  final double iconWidth;
  final Color color;
  final Color fontColor;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        CustomSvgPicture(
          color: color,
          imagePath: image,
          height: iconHeight,
          width: iconWidth,
        ),
        2.heightBox,
        Text(
          pageName,
          style: TextStyle(
            color: fontColor,
            fontSize: 12,
            fontWeight: FontWeight.bold,
          ),
        )
      ],
    );
  }
}
