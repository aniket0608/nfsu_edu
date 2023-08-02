import 'package:flutter/material.dart';

import 'pallete.dart';

class AppTheme {
  static ThemeData theme = ThemeData.light().copyWith(
    scaffoldBackgroundColor: Pallete.wcolor,
    appBarTheme: AppBarTheme(
      backgroundColor: Pallete.primaryColor[20],
      elevation: 0,
    ),
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      backgroundColor: Pallete.primaryColor[500],
    ),
  );
}
