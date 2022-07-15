// ignore_for_file: prefer_const_constructors, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:revrocket/models/constants.dart';
import 'package:revrocket/components/disucssion_user.dart';

class discussion_bubble extends StatelessWidget {
  discussion_bubble(
      {Key? key,
      required this.palet_size,
      required this.question,
      required this.descrition,
      required this.name})
      : super(key: key);

  final double palet_size;

  String name;

  String question;

  String descrition;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print("c");
      },
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 15.0, horizontal: 50.0),
        decoration: BoxDecoration(
          color: kdiscussionpage,
          borderRadius: BorderRadius.circular(35.0),
          boxShadow: [BoxShadow(blurRadius: 10.0)],
        ),
        height: palet_size,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 5.0),
                color: kprimaryscaffhold,
                child: discussion_user(
                  name: name,
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 1.0),
                // color: kErrorColor,
                child: Column(
                  children: [
                    SizedBox(
                      child: Text(
                        question,
                        textAlign: TextAlign.left,
                        style: GoogleFonts.poppins(
                          color: ksecondarytext,
                          fontSize: 30.0,
                        ),
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      child: Text(
                        descrition,
                        textAlign: TextAlign.left,
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
              thickness: 1,
            ),
            Expanded(
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 1.0),
                // color: ksecondarytext,
              ),
            )
          ],
        ),
      ),
    );
  }
}
