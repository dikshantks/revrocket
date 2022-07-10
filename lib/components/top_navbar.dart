// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:revrocket/components/home_text.dart';
import 'package:revrocket/pages/learn_page.dart';

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
    return Container(
      height: screen.height * 0.12,
      // color: Colors.red,
      margin: const EdgeInsets.all(4.0),
      alignment: Alignment.center,
      child: Row(
        children: [
          Container(
            margin: EdgeInsets.only(
              left: 10.0,
            ),
            // color: Colors.blueGrey,
            child: Image.asset(
              'assets/logo.png',
              height: 100.0,
              width: 100.0,
            ),
          ),
          ContentBar(screen: screen),
        ],
      ),
    );
  }
}

class ContentBar extends StatelessWidget {
  const ContentBar({
    Key? key,
    required this.screen,
  }) : super(key: key);

  final Size screen;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        // height: 300.0,
        width: screen.width * 0.5,
        margin: EdgeInsets.symmetric(
          horizontal: 30.0,
          // vertical: 5.0,
        ),
        padding: EdgeInsets.symmetric(horizontal: 10.0),
        alignment: Alignment.center,
        child: Row(
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
        ),
      ),
    );
  }
}
