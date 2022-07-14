import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../models/constants.dart';

class discussion_user extends StatelessWidget {
  const discussion_user({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.3,
      height: 50.0,
      child: FittedBox(
        child: Row(
          children: [
            const CircleAvatar(
              radius: 40.0,
              backgroundColor: klines,
            ),
            const VerticalDivider(
              color: klines,
              thickness: 1,
              indent: 1,
            ),
            const SizedBox(
              width: 100.0,
            ),
            Column(
              children: [
                Text(
                  "name",
                  textAlign: TextAlign.left,
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
          ],
        ),
      ),
    );
  }
}
