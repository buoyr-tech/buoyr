import 'package:buoyr/ui/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

TextStyle createHeading(double fontSize) {
  return GoogleFonts.getFont(
    'Montserrat',
    fontSize: fontSize,
    color: Colors.white,
    fontWeight: FontWeight.w700,
  );
}

TextStyle createSubtitle(double fontSize) {
  return GoogleFonts.getFont(
    'Montserrat',
    fontSize: fontSize,
    color: CustomColor().lightSecondaryColor,
    fontWeight: FontWeight.w400,
  );
}

TextStyle createBodyText(double fontSize) {
  return GoogleFonts.getFont(
    'Montserrat',
    fontSize: fontSize,
    color: Colors.white,
    fontWeight: FontWeight.w400,
  );
}

TextStyle createLink({double fontSize = 18.0}) {
  return GoogleFonts.getFont(
    'Montserrat',
    fontSize: fontSize,
    color: Colors.white,
    fontWeight: FontWeight.w400,
  );
}

class CustomTypography {
  final TextStyle headline1 = createHeading(48.0);
  final TextStyle headline2 = createHeading(36.0);
  final TextStyle headline3 = createHeading(24.0);
  final TextStyle headline4 = createHeading(18.0);

  final TextStyle subtitle1 = createSubtitle(24.0);
  final TextStyle subtitle2 = createSubtitle(14.0);

  final TextStyle bodyText1 = createBodyText(14.0);
  final TextStyle bodyText2 = createBodyText(12.0);

  final TextStyle link = createLink();
}
