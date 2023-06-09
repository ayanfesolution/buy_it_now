import 'package:buy_it_now/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'app_colors.dart';

class ButItNowThemeData {
  static ThemeData appThemeData(BuildContext context) {
    return ThemeData(
      primarySwatch: customKPrimaryColor,
      primaryColor: kPRYCOLOUR,
      fontFamily: GoogleFonts.arimo().fontFamily,
      textTheme: GoogleFonts.arimoTextTheme(),
      scaffoldBackgroundColor: kScalfold,
      // appBarTheme: const AppBarTheme(
      //   color: TokoColor.grey0,
      //   elevation: 0.0,
      // ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        elevation: 2,
        // selectedItemColor: kPRYCOLOUR,
        // unselectedItemColor: kBLKCOLOUR.withOpacity(0.4),
        type: BottomNavigationBarType.fixed,
        selectedLabelStyle: kTextStyleCustom(color: kBLKCOLOUR),
        unselectedLabelStyle: kTextStyleCustom(
          color: kBLKCOLOUR.withOpacity(0.4),
        ),
      ),
    );
  }
}
