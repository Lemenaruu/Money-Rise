import 'package:flutter/material.dart';

class AppColor {
  static Color greenDark = HexColor.fromHex("295F2D");

  static Color greenAccent = HexColor.fromHex("4FC500");

  ///topUP bg color
  static Color grey = HexColor.fromHex("F5F5F5");

  /// account bg color
  static Color yellow = HexColor.fromHex("FAD407");

  /// secondary 3.0
  static Color chartreUse = HexColor.fromHex("AEF900");

  /// primary 3.0
  ///MDY-pay bg color
  static Color burlyWood = HexColor.fromHex("EBC19C");
  static Color black = Colors.black;
  static Color white = HexColor.fromHex("FFFFFF");
  static Color grey900 = HexColor.fromHex("111827");
  static Color grey100 = HexColor.fromHex("F3F4F6");
  static Color grey50 = HexColor.fromHex("F9FAFB");

  // static Color black = Colors.black;
}

extension HexColor on Color {
  /// String is in the format "aabbcc" or "ffaabbcc" with an optional leading "#".
  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }

  /// Prefixes a hash sign if [leadingHashSign] is set to `true` (default is `true`).
  String toHex({bool leadingHashSign = true}) =>
      '${leadingHashSign ? '#' : ' '}'
      '${alpha.toRadixString(16).padLeft(2, '0')}'
      '${red.toRadixString(16).padLeft(2, '0')}'
      '${green.toRadixString(16).padLeft(2, '0')}'
      '${blue.toRadixString(16).padLeft(2, '0')}';
}
