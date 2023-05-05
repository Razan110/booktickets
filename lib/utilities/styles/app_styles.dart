import 'package:flutter/material.dart';

Color primary = const Color(0xff687daf);

class Styles {
  static Color primaryColor = primary;
  static Color textColor = const Color(0xff3b3b3b);
  static Color textColorDark = const Color(0xffeeedf2);
  static Color bgColor = const Color(0xffeeedf2);
  static Color bgColorDark = const Color(0xFF18184C);
  static Color orangeColor = const Color(0xfff37b67);
  static Color grayColor = const Color(0xFFBEBEBE);
  static Color lightGrayColor = const Color(0xFFD8D8D8);
  static Color contanierBg = const Color(0xfff4f6fd);
  static Color checkBoxColor = const Color(0xff526799);
  static Color tranColor = const Color(0x00FDFEFE);
  static TextStyle textStyle = TextStyle(
    fontSize: 16,
    color: textColor,
    fontWeight: FontWeight.w500,
  );
  static TextStyle textStyleSmall = TextStyle(
    fontSize: 14,
    color: textColor,
    fontWeight: FontWeight.w500,
  );
  static TextStyle headLineStyle = TextStyle(
    fontSize: 26,
    color: textColor,
    fontWeight: FontWeight.bold,
  );
  static TextStyle headLineStyle2 = TextStyle(
    fontSize: 21,
    color: textColor,
    fontWeight: FontWeight.bold,
  );
  static TextStyle headLineStyle3 = TextStyle(
    fontSize: 17,
    color: Colors.grey.shade500,
    fontWeight: FontWeight.w500,
  );
  static TextStyle headLineStyle4 = TextStyle(
    fontSize: 14,
    color: Colors.grey.shade500,
    fontWeight: FontWeight.bold,
  );
  static TextStyle notBoldheadLineStyle4 = TextStyle(
    fontSize: 14,
    color: Colors.grey.shade500,
    fontWeight: FontWeight.w500,
  );
  static TextStyle listItems = const TextStyle(
    fontSize: 19,
    color: Color(0xFF000000),
    fontWeight: FontWeight.w500,
  );
}
