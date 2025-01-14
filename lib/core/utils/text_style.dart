import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

TextStyle getTitelstyle(
    {double fontSize = 18,
    FontWeight fontWeight = FontWeight.bold,
    Color color = const Color(0xffffffff)}) {
  return TextStyle(
      fontSize: fontSize,
      fontWeight: fontWeight,
      color: color,
      fontFamily: GoogleFonts.poppins().fontFamily);
}

TextStyle getBodystyle(
    {double fontSize = 16,
    FontWeight fontWeight = FontWeight.normal,
    Color color = const Color(0xff121212)}) {
  return TextStyle(
      fontSize: fontSize,
      fontWeight: fontWeight,
      color: color,
      fontFamily: GoogleFonts.poppins().fontFamily);
}

TextStyle getsmallstyle(
    {double fontSize = 14,
    FontWeight fontWeight = FontWeight.normal,
    Color color = const Color(0xff8c8c8c)}) {
  return TextStyle(
      fontSize: fontSize,
      fontWeight: fontWeight,
      color: color,
      fontFamily: GoogleFonts.poppins().fontFamily);
}
