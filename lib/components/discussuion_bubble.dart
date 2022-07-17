// ignore_for_file: prefer_const_constructors, non_constant_identifier_names, camel_case_types, must_be_immutable, avoid_print

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:like_button/like_button.dart';
import '../UI models/constants.dart';
import 'package:revrocket/components/disucssion_user.dart';

class discussion_bubble extends StatefulWidget {
  discussion_bubble(
      {Key? key,
      required this.palet_size,
      required this.question,
      required this.descrition,
      required this.name,
      required this.onpress,
      required this.time,
      required this.listAnswer})
      : super(key: key);

  final double palet_size;
  String name;
  String question;
  String descrition;

  String time;

  var onpress;
  List<Map<String, dynamic>> listAnswer;

  @override
  State<discussion_bubble> createState() => _discussion_bubbleState();
}

class _discussion_bubbleState extends State<discussion_bubble> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onpress,
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 15.0, horizontal: 50.0),
        decoration: BoxDecoration(
          color: kdiscussionpage,
          borderRadius: BorderRadius.circular(35.0),
          boxShadow: const [BoxShadow(blurRadius: 10.0)],
        ),
        height: widget.palet_size,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Expanded(
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
                child: discussion_user(
                  name: widget.name,
                  time: widget.time,
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 30.0, vertical: 1.0),
                // color: kErrorColor,
                child: Column(
                  children: [
                    Container(
                      alignment: Alignment.topLeft,
                      child: Text(
                        widget.question,
                        style: GoogleFonts.poppins(
                          color: ksecondarytext,
                          fontSize: 30.0,
                        ),
                      ),
                    ),
                    Container(
                      alignment: Alignment.topLeft,
                      child: Text(
                        widget.descrition,
                        style: GoogleFonts.poppins(
                          color: ksecondarytext,
                          fontSize: 20.0,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Divider(
              thickness: 1.5,
            ),
            Expanded(
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 1.0),
                // color: ksecondarytext,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    SizedBox(
                      child: Row(
                        children: <Widget>[
                          Icon(
                            Icons.upgrade_rounded,
                          ),
                          Text(
                            '${widget.listAnswer.length}',
                            style:
                                TextStyle(fontSize: 20.0, color: kprimarytext),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      child: Row(
                        children: <Widget>[
                          Icon(
                            Icons.upcoming,
                          ),
                          Text(
                            '${widget.listAnswer.length}',
                            style:
                                TextStyle(fontSize: 20.0, color: kprimarytext),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      color: kErrorColor,
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Center(
                          child: Text(
                            "See Ansers",
                            style: GoogleFonts.poppins(color: kprimarytext),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
