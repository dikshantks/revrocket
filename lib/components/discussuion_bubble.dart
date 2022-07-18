// ignore_for_file: prefer_const_constructors, non_constant_identifier_names, camel_case_types, must_be_immutable, avoid_print, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:revrocket/tests/test_class.dart';
import '../UI models/constants.dart';
import 'package:revrocket/components/disucssion_user.dart';

class discussion_bubble extends StatefulWidget {
  discussion_bubble({
    Key? key,
    required this.palet_size,
    required this.question,
    required this.descrition,
    required this.name,
    required this.onpress,
    required this.time,
    required this.listAnswer,
    required this.details,
  }) : super(key: key);

  final double palet_size;
  String name;
  String question;
  String descrition;

  DiscusionsList details;

  String time;

  var onpress;
  List<Map<String, dynamic>> listAnswer;

  @override
  State<discussion_bubble> createState() => _discussion_bubbleState();
}

class _discussion_bubbleState extends State<discussion_bubble> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 15.0, horizontal: 50.0),
      decoration: BoxDecoration(
        color: kdiscussionpage,
        borderRadius: BorderRadius.circular(35.0),
        boxShadow: const [
          BoxShadow(
            color: Color.fromARGB(234, 22, 22, 22),
            blurRadius: 25.0,
            spreadRadius: 5.0,
          ),
        ],
      ),
      height: widget.palet_size,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Expanded(
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
              child: discussion_user(
                name: widget.details.username,
                time: widget.details.dateAdded,
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 10.0, vertical: 1.0),
              // color: kErrorColor,
              child: Column(
                children: [
                  Container(
                    // color: kErrorColor,
                    height: 40.0,
                    alignment: Alignment.topLeft,
                    child: Text(
                      // "a big realllly big wuestion to test it i hope it work fine",
                      widget.details.question,
                      style: GoogleFonts.poppins(
                        color: ksecondarytext,
                        fontSize: 30.0,
                      ),
                    ),
                  ),
                  Container(
                    color: kErrorColor,
                    height: 70.0,
                    alignment: Alignment.topLeft,
                    child: Text(
                      widget.details.description,
                      style: GoogleFonts.poppins(
                        color: ksecondarytext,
                        fontWeight: FontWeight.w300,
                        fontSize: 15.0,
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
                          Icons.favorite,
                        ),
                        Text(
                          ' ${widget.details.likes}',
                          style: GoogleFonts.poppins(
                              fontSize: 20.0, color: kprimarytext),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    child: Row(
                      children: <Widget>[
                        Text(
                          '${widget.listAnswer.length} Answers',
                          style: GoogleFonts.poppins(
                              fontSize: 20.0, color: kprimarytext),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 5.0),
                    color: kErrorColor,
                    child: ElevatedButton(
                      onPressed: widget.onpress,
                      child: Center(
                        child: Text(
                          "See Answers",
                          style: GoogleFonts.poppins(
                              fontSize: 20.0, color: kprimarytext),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
