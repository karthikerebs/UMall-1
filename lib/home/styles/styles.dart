import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

TextStyle poppins(Color color, double fontSize) {
  return GoogleFonts.poppins(
    color: color,
    fontSize: fontSize,
  );
}

// TextStyle rubik(Color color, double fontSize, FontWeight? fontWeight) {
//   return GoogleFonts.rubik(
//     color: color,
//     fontSize: fontSize,
//     fontWeight: FontWeight.bold,
//   );
// }

TextStyle rubik(Color color, double fontSize, FontWeight? fontWeight) {
  return TextStyle(
    color: color,
    fontSize: fontSize,
    fontWeight: fontWeight,
    fontFamily: 'Rubik',
  );
}
