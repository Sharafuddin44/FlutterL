import 'package:flutter/material.dart';

class MyTheme {
  static ThemeData get lighttheme => ThemeData(
      primarySwatch: Colors.deepOrange,
      appBarTheme: const AppBarTheme(
          color: Colors.white,
          elevation: 0.0,
          iconTheme: IconThemeData(color: Colors.black),
          titleTextStyle: TextStyle(color: Colors.black)));
}
