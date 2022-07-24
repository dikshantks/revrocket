import 'package:flutter/material.dart';
import 'package:revrocket/pages/discussion_forum.dart';

import '../UI models/constants.dart';

class afterLogin extends StatelessWidget {
  const afterLogin({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text("write your quiestion"),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
          child: TextField(
            autocorrect: false,
            style: TextStyle(color: Colors.black),
            decoration: InputDecoration(
              fillColor: ksecondarytext,
              filled: true,
              hintText: "am i dumb?",
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
        ),
        SizedBox(width: 20.0),
        Text("decribe"),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 20.0),
          height: 200.0,
          child: TextFormField(
            minLines: null,
            maxLines: null,
            expands: true,
            autocorrect: false,
            textAlign: TextAlign.left,
            style: TextStyle(color: Colors.black),
            decoration: InputDecoration(
              fillColor: ksecondarytext,
              filled: true,
              helperMaxLines: 2,
              hintText:
                  "no seriously this website took me a whoole month  and why did i chose \nflutter on web stack for this ",
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
              ),
            ),
          ),
        ),
        Container(
            margin: EdgeInsets.symmetric(vertical: 10.0),
            height: 70.0,
            child: DiscussionTexts(heading: "Submit", onpress: () {}))
      ],
    );
  }
}
