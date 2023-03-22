import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TTextTheme {
  static TextTheme lightTextTheme = TextTheme(
    headline1: GoogleFonts.montserrat(
      color: Colors.black87,
      fontSize: 96,
      fontWeight: FontWeight.w300,
      letterSpacing: -1.5,
    ),
    headline2: GoogleFonts.montserrat(
      color: Colors.black87,
      fontSize: 60,
      fontWeight: FontWeight.w300,
      letterSpacing: -0.5,
    ),
    headline3: GoogleFonts.montserrat(
      color: Colors.black,
      fontSize: 48,
      fontWeight: FontWeight.w400,
    ),
    headline4: GoogleFonts.montserrat(
      color: Colors.black,
      fontSize: 34,
      fontWeight: FontWeight.w400,
      letterSpacing: 0.25,
    ),
    headline5: GoogleFonts.montserrat(
      color: Colors.black,
      fontSize: 24,
      fontWeight: FontWeight.w400,
    ),
    headline6: GoogleFonts.montserrat(
      color: Colors.black,
      fontSize: 20,
      fontWeight: FontWeight.w500,
      letterSpacing: 0.15,
    ),
  );

  static TextTheme darkTextTheme = TextTheme(
    headline1: GoogleFonts.montserrat(
      color: Colors.white70,
      fontSize: 96,
      fontWeight: FontWeight.w300,
      letterSpacing: -1.5,
    ),
    headline2: GoogleFonts.montserrat(
      color: Colors.white70,
      fontSize: 60,
      fontWeight: FontWeight.w300,
      letterSpacing: -0.5,
    ),
    headline3: GoogleFonts.montserrat(
      color: Colors.white,
      fontSize: 48,
      fontWeight: FontWeight.w400,
    ),
    headline4: GoogleFonts.montserrat(
      color: Colors.white,
      fontSize: 34,
      fontWeight: FontWeight.w400,
      letterSpacing: 0.25,
    ),
    headline5: GoogleFonts.montserrat(
      color: Colors.white,
      fontSize: 24,
      fontWeight: FontWeight.w400,
    ),
    headline6: GoogleFonts.montserrat(
      color: Colors.white,
      fontSize: 20,
      fontWeight: FontWeight.w500,
      letterSpacing: 0.15,
    ),
  );
}
