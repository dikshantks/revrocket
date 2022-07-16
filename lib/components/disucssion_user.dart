// ignore_for_file: must_be_immutable, camel_case_types

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../UI models/constants.dart';

class discussion_user extends StatelessWidget {
  discussion_user({
    Key? key,
    required this.name,
  }) : super(key: key);

  String name;

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: kErrorColor,
      width: MediaQuery.of(context).size.width * 0.3,
      height: 50.0,
      child: Row(
        children: [
          const CircleAvatar(
            radius: 40.0,
            backgroundColor: klines,
          ),
          const VerticalDivider(
            color: kprimaryscaffhold,
            thickness: 1,
          ),
          const SizedBox(
            width: 30.0,
          ),
          Container(
            height: 70.0,
            alignment: Alignment.centerLeft,
            child: FittedBox(
              child: Column(
                children: [
                  Text(
                    name,
                    style: GoogleFonts.poppins(
                      color: ksecondarytext,
                      fontSize: 40.0,
                    ),
                  ),
                  Text(
                    "times",
                    textAlign: TextAlign.left,
                    style: GoogleFonts.poppins(
                      color: ksecondarytext,
                      fontSize: 20.0,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
