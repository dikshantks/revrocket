import 'package:flutter/material.dart';
import 'package:revrocket/components/home_text.dart';

import 'home_page.dart';

class Learnpage extends StatelessWidget {
  const Learnpage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // extendBodyBehindAppBar: true,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0.0,
        backgroundColor: Color(0xff111111),
        leadingWidth: 100.0,
        leading: Reuselogo(),
        title: Center(
          // color: Colors.amber,
          child: Hometext(
            heading: "learn",
            onpress: () {
              Navigator.pop(context);
            },
          ),
        ),
      ),
      body: Container(
        color: Color(0xff111111),
        child: Row(
          children: [
            Expanded(
                flex: 3,
                child: Container(
                  color: Colors.blue,
                )),
            Expanded(
              child: Container(
                color: Colors.amber,
              ),
            )
          ],
        ),
      ),
    );
  }
}
