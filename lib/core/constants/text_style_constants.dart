import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextStyleConstants {
  static TextStyle title = const TextStyle(
    fontSize: 34,
    fontWeight: FontWeight.bold,
  );

  static TextStyle subtitle = TextStyle(
    fontSize: 20,
    fontFamily: GoogleFonts.openSans(fontWeight: FontWeight.bold).fontFamily,
  );

  static TextStyle smallTitle = const TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.bold,
  );

  static TextStyle body = const TextStyle(
    fontSize: 16,
    color: Color.fromARGB(255, 0, 8, 13),
  );

  static TextStyle caption = const TextStyle(
    fontSize: 14,
    color: Color.fromARGB(255, 79, 69, 69),
  );

  static const TextStyle button = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.bold,
    color: Colors.white,
  );

  static const TextStyle error = TextStyle(
    fontSize: 14,
    color: Colors.red,
  );

  static const TextStyle success = TextStyle(
    fontSize: 14,
    color: Colors.green,
  );

  static const TextStyle warning = TextStyle(
    fontSize: 14,
    color: Colors.orange,
  );

  static const TextStyle info = TextStyle(
    fontSize: 14,
    color: Colors.blue,
  );

  static const TextStyle link = TextStyle(
    fontSize: 14,
    color: Colors.blue,
    decoration: TextDecoration.underline,
  );

  static const TextStyle disabled = TextStyle(
    fontSize: 14,
    color: Colors.grey,
  );

  static const TextStyle placeholder = TextStyle(
    fontSize: 14,
    color: Colors.grey,
  );

  static const TextStyle placeholderError = TextStyle(
    fontSize: 14,
    color: Colors.red,
  );

  static const TextStyle placeholderSuccess = TextStyle(
    fontSize: 14,
    color: Colors.green,
  );

  static const TextStyle placeholderWarning = TextStyle(
    fontSize: 14,
    color: Colors.orange,
  );

  static const TextStyle placeholderInfo = TextStyle(
    fontSize: 14,
    color: Colors.blue,
  );

  static const TextStyle placeholderLink = TextStyle(
    fontSize: 14,
    color: Colors.blue,
    decoration: TextDecoration.underline,
  );

  static const TextStyle placeholderDisabled = TextStyle(
    fontSize: 14,
    color: Colors.grey,
  );

  static const TextStyle input = TextStyle(
    fontSize: 14,
  );

  static const TextStyle inputError = TextStyle(
    fontSize: 14,
    color: Colors.red,
  );

  static const TextStyle inputSuccess = TextStyle(
    fontSize: 14,
    color: Colors.green,
  );

  static const TextStyle inputWarning = TextStyle(
    fontSize: 14,
    color: Colors.orange,
  );

  static TextStyle inputInfo = const TextStyle(
    fontSize: 16,
    color: Color.fromARGB(255, 10, 81, 157),
    fontWeight: FontWeight.bold,
  );
}
