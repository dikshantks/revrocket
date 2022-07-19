// ignore_for_file: prefer_const_constructors, camel_case_types, must_be_immutable, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:like_button/like_button.dart';
import 'package:revrocket/pages/discussion_openpage.dart';
import 'package:revrocket/tests/test_class.dart';
import '../UI models/constants.dart';
import 'package:revrocket/components/disucssion_user.dart';

class discussion_bubble extends StatefulWidget {
  discussion_bubble({
    Key? key,
    required this.listAnswer,
    required this.details,
  }) : super(key: key);

  DiscusionsList details;

  List<Map<String, dynamic>> listAnswer;

  @override
  State<discussion_bubble> createState() => _discussion_bubbleState();
}

class _discussion_bubbleState extends State<discussion_bubble> {
  @override
  Widget build(BuildContext context) {
    final boxHeight = MediaQuery.of(context).size.height * 0.3;
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 50.0),
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
      height: boxHeight,
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
                    // color: kErrorColor,
                    height: MediaQuery.of(context).size.height * 0.09,
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
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 1.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  SizedBox(
                    child: Row(
                      children: <Widget>[
                        LikeButton(),
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
                    margin: EdgeInsets.symmetric(vertical: 10.0),
                    // color: kErrorColor,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => discuss_openscreen(
                              current: widget.details,
                              listAnswer: widget.listAnswer,
                            ),
                          ),
                        );
                      },
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
