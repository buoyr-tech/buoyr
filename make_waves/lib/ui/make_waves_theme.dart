import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MakeWavesTheme {
  final Color blackColor;
  final Color buoyrColor;
  final Color anchorColor;
  final Color makeWavesColor;
  final String fontFamily;

  MakeWavesTheme({
    required this.blackColor,
    required this.buoyrColor,
    required this.anchorColor,
    required this.makeWavesColor,
    required this.fontFamily,
  });

  TextStyle title() => GoogleFonts.getFont(
        fontFamily,
        fontSize: 36.0,
        fontWeight: FontWeight.bold,
        color: buoyrColor,
      );

  TextStyle subtitle() => GoogleFonts.getFont(
        fontFamily,
        fontSize: 24.0,
        fontWeight: FontWeight.bold,
        color: buoyrColor,
      );

  TextStyle caption() => GoogleFonts.getFont(
        fontFamily,
        fontSize: 18.0,
        fontWeight: FontWeight.bold,
        color: blackColor,
      );

  TextStyle body() => GoogleFonts.getFont(
        fontFamily,
        fontSize: 18.0,
        fontWeight: FontWeight.normal,
        color: blackColor,
        height: 2.0,
      );
}

final theme = MakeWavesTheme(
  blackColor: Color(0xff1E1E1E),
  buoyrColor: Color(0xff101D42),
  anchorColor: Color(0xff0DCCD7),
  makeWavesColor: Color(0xff0069FF),
  fontFamily: 'Montserrat',
);
