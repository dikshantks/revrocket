import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'constants.dart';

class CustomTheme {
  static ThemeData get mythme {
    return ThemeData(
      scaffoldBackgroundColor: kprimaryscaffhold,
      primaryColor: kprimaryscaffhold,
      fontFamily: 'Montserrat',
      // textTheme: TextTheme(
      //   bodyLarge: GoogleFonts.firaSans(
      //     color: kprimarytext,
      //     fontSize: 20.0,
      //   ),
      // ),
    );
  }
}
