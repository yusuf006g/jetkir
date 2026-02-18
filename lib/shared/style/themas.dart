import 'package:flutter/material.dart';

ThemeData darkTheme = ThemeData(
  // colors
  scaffoldBackgroundColor: Color(0xffF8F8FF),
  primaryColor: const Color(0xff9D00FF),
  hintColor: const Color(0xff86827F),

  // appBap
  appBarTheme: const AppBarTheme(
    titleTextStyle: TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.w500,
      color: Color(0xff2F313B),
    ),
  ),

  // text
  listTileTheme: const ListTileThemeData(
    textColor: Color(0xff242424), // Добавьте это
    titleTextStyle: TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w500,
      color: Color(0xff242424),
    ),
    subtitleTextStyle: TextStyle(
      // И это для subtitle
      fontSize: 14,
      fontWeight: FontWeight.w400,
      color: Color(0xffABABAB),
    ),
  ),
  textTheme: const TextTheme(
    bodySmall: TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w400,
      color: Color(0xff86827F),
    ),

    titleMedium: TextStyle(
      color: Color(0xff060527),
      fontSize: 14,
      fontWeight: FontWeight.w500,
    ),

    bodyMedium: TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w400,
      color: Color(0xff86827F),
    ),
    bodyLarge: TextStyle(
      fontSize: 30,
      fontWeight: FontWeight.w500,
      color: Color(0xff1E232C),
    ),
  ),

  // button
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: const Color(0xff9D00FF),
      foregroundColor: Colors.white,
      textStyle: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
      padding: const EdgeInsets.symmetric(vertical: 16),
    ),
  ),

  outlinedButtonTheme: OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      foregroundColor: const Color(0xff9D00FF),
      side: const BorderSide(color: Color(0xff9D00FF)),
    ),
  ),

  // textField
  inputDecorationTheme: InputDecorationTheme(
    fillColor: Colors.white,
    filled: true,
    enabledBorder: OutlineInputBorder(
      borderSide: BorderSide(color: const Color(0xFFF6F6F6)),
      borderRadius: BorderRadius.circular(20),
    ),
    focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(color: const Color(0xff9D00FF)),
      borderRadius: BorderRadius.circular(20),
    ),
    contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
  ),
);

class Themas {
  static const greenColor = Color(0xff34C759);
  static const badColor = Color(0xffFF2E32);
  static const blueColor = Color(0xff2573E9);
  static const containerRedBackgroundColor = Color(0xffFDE8E8);
  static const userNameText = TextStyle(
    fontSize: 20,
    color: Color(0xff303030),
    fontWeight: FontWeight.w500,
  );
  static const cardWidthText = TextStyle(
    fontSize: 13,
    color: Color(0xff9D00FF),
    fontWeight: FontWeight.w500,
  );
  static const cardblueText = TextStyle(
    fontSize: 12,
    color: Color(0xff9D00FF),
    fontWeight: FontWeight.w400,
  );static const cardblackText = TextStyle(
    fontSize: 12,
    color: Color(0xff353535),
    fontWeight: FontWeight.w400,
  );
}
