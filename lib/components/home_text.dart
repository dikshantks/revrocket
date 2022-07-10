import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:revrocket/clors.dart';

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
      // color: Color(0xff696969),
      duration: const Duration(milliseconds: 100),
      padding: EdgeInsets.only(
        top: ishover ? 1.0 : 10.0,
        bottom: 10.0,
      ),
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
            margin: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Text(
              widget.heading,
              style: GoogleFonts.firaSans(
                fontSize: 30.0,

                // ignore: prefer_const_constructors
                color: !ishover ? kprimarytext : ksecondarytext,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
