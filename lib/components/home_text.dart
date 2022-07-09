import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Hometext extends StatefulWidget {
  Hometext({Key? key, required this.heading}) : super(key: key);

  String heading;

  @override
  State<Hometext> createState() => _HometextState();
}

class _HometextState extends State<Hometext> {
  bool ishover = false;
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      decoration: BoxDecoration(
        // color: ishover ? Color(0xff696969) : Colors.transparent,
        borderRadius: BorderRadius.circular(20.0),
      ),
      // height: 100.0,
      duration: Duration(milliseconds: 100),
      padding:
          EdgeInsets.only(top: ishover ? 1 : 5.0, bottom: !ishover ? 1 : 3.0),

      child: InkWell(
        onTap: (() {
          print("sfsf");
        }),
        onHover: ((value) {
          setState(() {
            ishover = value;
          });
        }),
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
          child: Text(
            widget.heading,
            style:
                GoogleFonts.firaSans(fontSize: 30.0, color: Color(0xffbbccdd)),
          ),
        ),
      ),
    );
  }
}
