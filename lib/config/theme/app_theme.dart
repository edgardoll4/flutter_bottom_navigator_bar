import 'package:flutter/material.dart';

const List<Color> _colorsTheme = [
  Colors.lightBlue,
  Colors.red,
  Colors.pink,
  Colors.green,
  Colors.yellow,
  Colors.cyan,
  Colors.lime,
  Colors.purple,
  Colors.teal,
  Colors.orange,
  Colors.brown,
];

const List<Brightness> _brightnessMode = [
  Brightness.dark,
  Brightness.light,
];

class AppTheme {
  final int selectColor;
  final int selectBrigthness;

  AppTheme({this.selectBrigthness = 0, this.selectColor = 0})
      : assert(selectColor >= 0 && selectColor <= _colorsTheme.length);

  ThemeData theme() {
    return ThemeData(
      brightness: _brightnessMode[selectBrigthness],
      colorSchemeSeed: _colorsTheme[selectColor],
      useMaterial3: true,
    );
  }
}
