import 'package:flutter/material.dart';

final Color customColor = Color(0xFF5C11D4);
final List<Color> _colorThemes = [
  customColor,
  Colors.blue,
  Colors.pink,
  Colors.yellow,
  Colors.teal,
  Colors.green
];

class AppTheme {
  final int selectColor;

  AppTheme({required this.selectColor})
      : assert(selectColor >= 0 && selectColor <= _colorThemes.length,
            'Colors must be between 0 and ${_colorThemes.length}');
  ThemeData theme() {
    return ThemeData(
        useMaterial3: true,
        colorSchemeSeed: _colorThemes[selectColor],
        brightness: Brightness.light);
  }
}
