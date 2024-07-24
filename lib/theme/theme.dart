import 'package:flutter/material.dart';

final lightMode = ThemeData(
  brightness: Brightness.light,
  colorScheme: ColorScheme.light(
    surface: Colors.blue.shade400,
    primary: Colors.blue.shade300,
    secondary: Colors.blue.shade200,
    // inversePrimary: Colors.black,
  ),
);

final darkMode = ThemeData(
  brightness: Brightness.dark,
  colorScheme: ColorScheme.dark(
    surface: Colors.blue.shade900,
    primary: Colors.blue.shade800,
    secondary: Colors.blue.shade600,
  ),
);
