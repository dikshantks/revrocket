import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:revrocket/constants.dart';

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
      margin: EdgeInsets.only(top: 20.0),
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
            decoration: const BoxDecoration(
                color: kdiscussionpage,
                borderRadius: BorderRadius.all(Radius.circular(15))),
            child: Text(
              widget.heading,
              style: GoogleFonts.poppins(
                fontSize: 30.0,
                // ignore: prefer_const_constructors
                color: kprimarytext,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
