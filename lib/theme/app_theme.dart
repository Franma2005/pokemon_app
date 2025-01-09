import 'package:flutter/material.dart';

class AppTheme {
  static final Color primaryColor = Colors.redAccent;
  static final Color titlesColor = Colors.white;

  static final ThemeData darkTheme = ThemeData.dark().copyWith(
    primaryColor: primaryColor,

    // Personalización de los AppBar de la app
    appBarTheme: AppBarTheme(
      color: primaryColor,
      foregroundColor: titlesColor,
      elevation: 0,
    ),
    listTileTheme: ListTileThemeData(
      iconColor: primaryColor,
    ),
  );
}
