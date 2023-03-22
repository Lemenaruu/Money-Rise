import 'package:flutter/material.dart';
import 'package:money_rise/theme/color.dart';

class AppTheme {
  static ThemeData theme = ThemeData(
    fontFamily: 'gotham',
    // primaryColor: AppColor.red,
    scaffoldBackgroundColor: AppColor.grey100,

    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColor.burlyWood,
        textStyle: btnText,
      ),
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      unselectedItemColor: AppColor.black,
      selectedItemColor: AppColor.black,
      selectedIconTheme: IconThemeData(color: AppColor.burlyWood),
      selectedLabelStyle: TextStyle(
        fontSize: 12,
        color: AppColor.black,
      ),
    ),

    appBarTheme: const AppBarTheme(
      titleTextStyle: TextStyle(
        fontWeight: FontWeight.bold,
        color: Colors.black,
        fontSize: 18,
        fontFamily: 'poppin',
      ),
      backgroundColor: Colors.white,
      foregroundColor: Colors.black,
      elevation: 0,
    ),
    // fontFamily: 'gotham',
  );

  static TextStyle bodyText = TextStyle(
    fontSize: 12,
    color: AppColor.black,
  );
  static TextStyle txtSize11 = TextStyle(
    fontSize: 11,
    color: AppColor.black,
  );

  static TextStyle titleText = TextStyle(
    fontSize: 15,
    fontStyle: FontStyle.italic,
    color: AppColor.black,
    fontWeight: FontWeight.w600,
  );
  static TextStyle btnText = TextStyle(
    fontSize: 15,
    color: AppColor.white,
  );
}
