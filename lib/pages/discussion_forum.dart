import 'package:flutter/material.dart';

import '../components/home_text.dart';

class Discussion_page extends StatelessWidget {
  Discussion_page({Key? key, required this.screen}) : super(key: key);

  Size screen;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        title: Center(
          // color: Colors.amber,
          child: Hometext(
            heading: "discussion form",
            onpress: () {
              Navigator.pop(context);
            },
          ),
        ),
      ),
      body: Container(
        color: Color(0xff111111),
      ),
    );
  }
}
