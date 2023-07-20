import 'package:flutter/material.dart';

const colorList = [
  Colors.blue,
  Colors.teal,
  Colors.green,
  Colors.orange,
  Colors.amberAccent,
  Colors.red
];

class AppTheme {
  AppTheme({this.selectedColor = 0})
      : assert(
          selectedColor >= 0,
          'Selected color must be greather than 0',
        ),
        assert(
          selectedColor < colorList.length,
          'Selected color must be less than or equal to ${colorList.length - 1}',
        );

  final int selectedColor;

  ThemeData getTheme() => ThemeData(
        useMaterial3: true,
        colorSchemeSeed: colorList[selectedColor],
        appBarTheme: const AppBarTheme(centerTitle: false),
      );
}
