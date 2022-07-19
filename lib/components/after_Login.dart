// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:revrocket/UI%20models/constants.dart';
import 'package:revrocket/pages/discussion_forum.dart';

class afterLogin extends StatelessWidget {
  const afterLogin({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text("write your quiestion",
            style: GoogleFonts.poppins(fontSize: 15.0, color: kprimarytext)),
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
        Text("decribe",
            style: GoogleFonts.coda(
                fontWeight: FontWeight.w600,
                fontSize: 15.0,
                color: kprimarytext)),
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

class comingSoonScreen extends StatelessWidget {
  const comingSoonScreen({
    Key? key,
    required this.paletSize,
  }) : super(key: key);

  final double paletSize;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 10.0),
        decoration: BoxDecoration(
          color: kdiscussionpage,
          borderRadius: BorderRadius.circular(20.0),
          boxShadow: const [
            BoxShadow(
              color: Color.fromARGB(255, 19, 18, 18),
              blurRadius: 20.0,
            ),
          ],
        ),
        height: paletSize,
        child: Center(child: Text("jfslfkjslfksjflsjl")),
      ),
    );
  }
}

class signin_google extends StatefulWidget {
  signin_google({
    Key? key,
    required this.onpress,
  }) : super(key: key);

  VoidCallback onpress;

  @override
  State<signin_google> createState() => _signin_googleState();
}

class _signin_googleState extends State<signin_google> {
  @override
  Widget build(BuildContext context) {
    // var usernow = UserModel();
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: 10.0),
          child: FittedBox(
            child: Text(
              "sign in to answer or ask question",
              style: GoogleFonts.poppins(
                color: ksecondarytext,
                fontSize: 20.0,
              ),
            ),
          ),
        ),
        SizedBox(
          height: 20.0,
        ),
        SignInButton(
          Buttons.GoogleDark,
          onPressed: widget.onpress,
        ),
      ],
    );
  }
}

class DiscussionTexts extends StatefulWidget {
  DiscussionTexts({Key? key, required this.heading, required this.onpress})
      : super(key: key);

  String heading;

  VoidCallback onpress;

  @override
  State<DiscussionTexts> createState() => _DiscussionTextsState();
}

class _DiscussionTextsState extends State<DiscussionTexts> {
  bool ishover = false;
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      alignment: Alignment.center,
      margin:
          EdgeInsets.only(top: ishover ? 0.0 : 15.0, left: 10.0, right: 10.0),
      duration: const Duration(milliseconds: 100),
      child: Theme(
        data: Theme.of(context).copyWith(
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
          hoverColor: Colors.transparent,
        ),
        child: InkWell(
          onTap: widget.onpress,
          onHover: (f) {
            setState(() {
              ishover = f;
            });
          },
          child: Container(
            padding:
                EdgeInsets.only(top: 5.0, left: 10.0, right: 10.0, bottom: 5.0),
            decoration: BoxDecoration(
                boxShadow: const [
                  BoxShadow(
                      spreadRadius: 5, blurRadius: 5, color: Colors.black12)
                ],
                color: kdiscussionpage,
                borderRadius: const BorderRadius.all(Radius.circular(15))),
            child: Text(
              widget.heading,
              style: GoogleFonts.poppins(
                fontSize: 30.0,
                color: kprimarytext,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
