/// App-wide constants that aren't tied to any single feature.
class AppConstants {
  AppConstants._();

  static const String appName = 'Steam Insights';

  /// How long cached library data is considered fresh before a background
  /// refresh is suggested (does not block offline reads, see RF10).
  static const Duration cacheTtl = Duration(hours: 6);

  static const int defaultPageSize = 50;

  static const String isarDbName = 'steam_insights';
}
