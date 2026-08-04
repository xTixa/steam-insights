import 'package:flutter/material.dart';

/// Seed color and chart accent palette. Chart series colors are kept here so
/// fl_chart widgets across features/statistics share one consistent,
/// validated palette (see dataviz skill: `validate_palette.js` — this exact
/// 8-hue order passes CVD separation, normal-vision floor and lightness
/// band in both light and dark mode). Slot order is the CVD-safety
/// mechanism — always consume by fixed index, never re-sorted or cycled.
class AppColors {
  AppColors._();

  static const Color seed = Color(0xFF1B2838); // Steam dark blue

  static const List<Color> chartSeriesLight = [
    Color(0xFF2A78D6), // blue
    Color(0xFFEB6834), // orange
    Color(0xFF1BAF7A), // aqua
    Color(0xFFEDA100), // yellow
    Color(0xFFE87BA4), // magenta
    Color(0xFF008300), // green
    Color(0xFF4A3AA7), // violet
    Color(0xFFE34948), // red
  ];

  static const List<Color> chartSeriesDark = [
    Color(0xFF3987E5), // blue
    Color(0xFFD95926), // orange
    Color(0xFF199E70), // aqua
    Color(0xFFC98500), // yellow
    Color(0xFFD55181), // magenta
    Color(0xFF008300), // green
    Color(0xFF9085E9), // violet
    Color(0xFFE66767), // red
  ];

  static List<Color> chartSeries(Brightness brightness) =>
      brightness == Brightness.dark ? chartSeriesDark : chartSeriesLight;
}
