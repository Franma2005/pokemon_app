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
      textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(
        foregroundColor: primaryColor,
      )),
      floatingActionButtonTheme: FloatingActionButtonThemeData(
          backgroundColor: primaryColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10000),
          )),
      elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
              backgroundColor: primaryColor,
              foregroundColor: titlesColor,
              shape: StadiumBorder(),
              padding: EdgeInsets.all(20),
              elevation: 0)),
      inputDecorationTheme: InputDecorationTheme(
          floatingLabelStyle: TextStyle(color: primaryColor),
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: primaryColor),
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  topRight: Radius.circular(10),
      )),
      focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: primaryColor),
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  topRight: Radius.circular(10),
      )),
      border: OutlineInputBorder(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  topRight: Radius.circular(10),
      )),
      ),
    );
}
