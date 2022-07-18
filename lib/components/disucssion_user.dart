// ignore_for_file: must_be_immutable, camel_case_types

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../UI models/constants.dart';

class discussion_user extends StatelessWidget {
  discussion_user({
    Key? key,
    required this.name,
    required this.time,
    this.padd_marg = 60.0,
  }) : super(key: key);

  String name;
  String time;

  double padd_marg;

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: ksecondarytext,
      width: MediaQuery.of(context).size.width * 0.3,
      height: padd_marg,
      child: Row(
        children: [
          const CircleAvatar(
            minRadius: 20.0,
            maxRadius: 35.0,
            backgroundColor: klines,
          ),
          const SizedBox(
            width: 20.0,
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
                    time,
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
