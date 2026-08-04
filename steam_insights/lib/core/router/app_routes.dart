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

  static const String comparison = '/comparison';
  static const String search = '/search';
}
