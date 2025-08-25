import 'package:flutter/material.dart';

class AppTheme {
  ThemeData getTheme() {
    const Color seedColor = Colors.deepPurple;
    return ThemeData(
      useMaterial3: true,
      colorSchemeSeed: seedColor,
      listTileTheme: ListTileThemeData(
        iconColor: seedColor
      )
    );
  }
}
