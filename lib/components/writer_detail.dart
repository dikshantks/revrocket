// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constants.dart';

class writer_deatil extends StatelessWidget {
  const writer_deatil({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 30.0),
      padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
      child: FittedBox(
        child: Row(
          children: [
            CircleAvatar(
              radius: 40.0,
              backgroundColor: klines,
            ),
            VerticalDivider(
              color: klines,
              thickness: 1,
              indent: 1,
            ),
            SizedBox(
              width: 30.0,
            ),
            Column(
              children: [
                Text(
                  "dikshant sharma",
                  textAlign: TextAlign.left,
                  style: GoogleFonts.poppins(
                    color: ksecondarytext,
                    fontSize: 35.0,
                  ),
                ),
                Text(
                  "name hour",
                  textAlign: TextAlign.left,
                  style: GoogleFonts.poppins(
                    color: ksecondarytext,
                    fontSize: 20.0,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
