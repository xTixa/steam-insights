/// Route path constants and typed path-building helpers. Features reference
/// route strings from here rather than hardcoding them.
class AppRoutes {
  AppRoutes._();

  static const String splash = '/';
  static const String profileSelect = '/profile-select';
  static const String addProfile = '/profile-select/add';

  static const String dashboard = '/dashboard';
  static const String library = '/library';
  static const String statistics = '/statistics';
  static const String wishlist = '/wishlist';
  static const String settings = '/settings';

  static const String gameDetailPattern = '/library/game/:appId';
  static String gameDetail(int appId) => '/library/game/$appId';

  // Nested under their tab's root route (rather than top-level siblings) so
  // they push onto that branch's Navigator and stay inside AppShell's
  // Scaffold — keeping the bottom NavigationBar visible. See app_router.dart.
  static const String comparison = '/dashboard/comparison';
  static const String search = '/library/search';
}
