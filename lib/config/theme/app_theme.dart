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
  AppTheme({this.selectedColor = 0, this.isDarkMode = false})
      : assert(
          selectedColor >= 0,
          'Selected color must be greather than 0',
        ),
        assert(
          selectedColor < colorList.length,
          'Selected color must be less than or equal to ${colorList.length - 1}',
        );

  final int selectedColor;
  final bool isDarkMode;

  ThemeData getTheme() => ThemeData(
        useMaterial3: true,
        brightness: isDarkMode ? Brightness.dark : Brightness.light,
        colorSchemeSeed: colorList[selectedColor],
        appBarTheme: const AppBarTheme(centerTitle: false),
      );

  AppTheme copyWith({int? selectedColor, bool? isDarkMode}) => AppTheme(
        selectedColor: selectedColor ?? this.selectedColor,
        isDarkMode: isDarkMode ?? this.isDarkMode,
      );
}
