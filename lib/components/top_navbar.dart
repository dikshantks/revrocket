// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:revrocket/components/home_text.dart';
import 'package:revrocket/pages/stock1.dart';

import '../pages/discussion_forum.dart';

class TopNavBar extends StatelessWidget {
  const TopNavBar({
    Key? key,
    required this.screen,
    required this.name,
  }) : super(key: key);

  final Size screen;
  final String name;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Hometext(
          heading: "Get started",
          onpress: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Learnpage()),
            );
          },
        ),
        SizedBox(
          width: screen.width * 0.1,
        ),
        Hometext(
          heading: "discuss",
          onpress: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => Discussion_page(
                  screen: screen,
                ),
              ),
            );
          },
        ),
      ],
    );
  }
}
