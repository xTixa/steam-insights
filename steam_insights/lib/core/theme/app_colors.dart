import 'package:flutter/material.dart';

/// Seed color and chart accent palette. Chart series colors are kept here so
/// fl_chart widgets across features/statistics share one consistent palette.
class AppColors {
  AppColors._();

  static const Color seed = Color(0xFF1B2838); // Steam dark blue

  static const List<Color> chartSeries = [
    Color(0xFF66C0F4), // Steam light blue
    Color(0xFFA4D007), // Steam green
    Color(0xFFE04E4E),
    Color(0xFFF5A623),
    Color(0xFF9B59B6),
    Color(0xFF1ABC9C),
  ];
}
