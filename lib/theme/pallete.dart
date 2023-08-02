import 'package:flutter/material.dart';

class Pallete {
  static const MaterialColor primaryColor = MaterialColor(
    0xFF19A095,
    <int, Color>{
      20: Color(0xFF79EA99),
      50: Color(0xFFE1F5EC),
      100: Color(0xFFB3E0DA),
      200: Color(0xFF87D5C1),
      300: Color(0xFF5DC0A8),
      400: Color(0xFF3BA595),
      500: Color(0xFF19A095),
      600: Color(0xFF0F8582),
      700: Color(0xFF076A6E),
      800: Color(0xFF034F54),
      900: Color(0xFF00343A),
    },
  );

  static const MaterialColor backgroundColor = MaterialColor(
    0xFFD7DB9D,
    <int, Color>{
      50: Color(0xFFF8F9ED),
      100: Color(0xFFF4F5E7),
      200: Color(0xFFEFEFF4),
      300: Color(0xFFE9EAEC),
      400: Color(0xFFE4E0E0),
      500: Color(0xFFD7DB9D),
      600: Color(0xFFCDCD8D),
      700: Color(0xFFBABA7B),
      800: Color(0xFF999969),
      900: Color(0xFF777757),
    },
  );
  static const wcolor = Colors.white;

  static const MaterialColor accentColor = MaterialColor(
    0xFFD413C6,
    <int, Color>{
      50: Color(0xFFFFE5E0),
      100: Color(0xFFFFD9D4),
      200: Color(0xFFFFBDD8),
      300: Color(0xFFFFA1C2),
      400: Color(0xFFFF85AD),
      500: Color(0xFFD413C6),
      600: Color(0xFFC10DC0),
      700: Color(0xAB09A4),
      800: Color(0x890788),
      900: Color(0x67056C),
    },
  );
}

// Now you can access the colors like this:
// Palette.primaryColor[500] for primary color 500 shade (Color(0xFF19A095))
// Palette.secondaryColor[700] for secondary color 700 shade (Color(0xFFBABA7B))
// Palette.accentColor[300] for accent color 300 shade (Color(0xFFFFA1C2))
