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
      height: 150.0,
      // color: Colors.black12,
      width: MediaQuery.of(context).size.width * 0.5,
      margin: EdgeInsets.symmetric(vertical: 20.0),
      padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
      child: Row(
        children: [
          CircleAvatar(
            radius: 40.0,
            backgroundColor: klines,
          ),
          SizedBox(
            width: 20.0,
          ),
          VerticalDivider(
            color: klines,
            width: 1,
          ),
          Container(
            height: 100.0,
            alignment: Alignment.topCenter,
            // color: klines,
            margin: EdgeInsets.only(left: 30.0),
            child: Column(
              children: [
                Text(
                  "dikshant sharma",
                  textAlign: TextAlign.left,
                  style: GoogleFonts.poppins(
                    color: ksecondarytext,
                    fontSize: 35.0,
                  ),
                ),
                Divider(
                  thickness: 1,
                ),
                Text(
                  "name of athour",
                  textAlign: TextAlign.left,
                  style: GoogleFonts.poppins(
                    color: ksecondarytext,
                    fontSize: 10.0,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
