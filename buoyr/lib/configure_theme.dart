import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';

const Color _textColor = Color(0xff1E1E1E);
const Color _primaryColor = Color(0xff1BA7EC);
const Color _accentColor = Color(0xff8F8F8F);
const Color _scaffoldColor = Color(0xffF3F3F3);
const String _fontFamily = 'Source Sans Pro';

ThemeData configureTheme() {
  return ThemeData(
    primaryColor: _primaryColor,
    accentColor: _accentColor,
    scaffoldBackgroundColor: _scaffoldColor,
    buttonColor: _primaryColor,
    textTheme: TextTheme(
      headline1: GoogleFonts.getFont(
        _fontFamily,
        fontSize: 48.0,
        fontWeight: FontWeight.bold,
        color: _primaryColor,
      ),
      headline2: GoogleFonts.getFont(
        _fontFamily,
        fontSize: 36.0,
        fontWeight: FontWeight.bold,
        color: _primaryColor,
      ),
      headline3: GoogleFonts.getFont(
        _fontFamily,
        fontSize: 24.0,
        fontWeight: FontWeight.bold,
        color: _textColor,
      ),
      headline4: GoogleFonts.getFont(
        _fontFamily,
        fontSize: 18.0,
        fontWeight: FontWeight.bold,
        color: _textColor,
      ),
      bodyText1: GoogleFonts.getFont(
        _fontFamily,
        fontSize: 14.0,
        fontWeight: FontWeight.w400,
        color: _textColor,
      ),
      bodyText2: GoogleFonts.getFont(
        _fontFamily,
        fontSize: 12.0,
        fontWeight: FontWeight.normal,
        color: _textColor,
        height: 2.0,
      ),
      button: GoogleFonts.getFont(
        _fontFamily,
        fontSize: 14.0,
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),
    ),
  );
}
