import 'package:flutter/material.dart';

/// Custom [TextTheme] tweaks layered on top of the default Material 3 type
/// scale. Kept minimal — most screens should use `Theme.of(context).textTheme`
/// directly.
class AppTextStyles {
  AppTextStyles._();

  static TextTheme apply(TextTheme base) => base;
}
