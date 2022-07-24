// ignore_for_file: prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../UI models/constants.dart';

class Headline1 extends StatelessWidget {
  Headline1({Key? key, this.headline1}) : super(key: key);
  final headline1;
  @override
  Widget build(BuildContext context) {
    return Text(
      headline1,
      style: GoogleFonts.firaSans(
        fontWeight: FontWeight.w400,
        fontSize: 40,
        color: kprimarytext,
      ),
    );
  }
}

class subheadings extends StatelessWidget {
  subheadings({Key? key, required this.subheading}) : super(key: key);
  final String subheading;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 10, bottom: 10),
      child: Text(
        subheading,
        style: GoogleFonts.firaSansCondensed(
          fontWeight: FontWeight.w400,
          fontSize: 32.0,
          color: kprimarytext,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}

class Content extends StatelessWidget {
  // ignore: use_key_in_widget_constructors
  Content({this.content = ''});
  String content;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(bottom: 10),
      child: Text(
        content,
        style: GoogleFonts.firaSans(
          fontWeight: FontWeight.w200,
          fontSize: 20.0,
          color: Colors.white,
        ),
        textAlign: TextAlign.start,
      ),
    );
  }
}
