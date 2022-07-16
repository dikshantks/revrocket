// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:revrocket/models/constants.dart';

// ignore: must_be_immutable
class Hometext extends StatefulWidget {
  Hometext({Key? key, required this.heading, required this.onpress})
      : super(key: key);

  String heading;

  VoidCallback onpress;

  @override
  State<Hometext> createState() => _HometextState();
}

class _HometextState extends State<Hometext> {
  bool ishover = false;
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      alignment: Alignment.center,
      margin: EdgeInsets.only(top: ishover ? 10.0 : 20.0),
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
            // alignment: Alignment.center,
            padding: EdgeInsets.symmetric(horizontal: 10.0),
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
