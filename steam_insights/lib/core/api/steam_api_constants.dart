/// Base URLs, endpoint paths and API key lookup for the two Steam APIs the
/// app talks to. See core/api/steam_web_api_client.dart and
/// core/api/steam_store_api_client.dart.
class SteamApiConstants {
  SteamApiConstants._();

  static const String webApiBaseUrl = 'https://api.steampowered.com';
  static const String storeApiBaseUrl = 'https://store.steampowered.com/api';

  // Web API endpoints (require [apiKey]).
  static const String getOwnedGames = '/IPlayerService/GetOwnedGames/v1';
  static const String getPlayerSummaries =
      '/ISteamUser/GetPlayerSummaries/v2';
  static const String getPlayerAchievements =
      '/ISteamUserStats/GetPlayerAchievements/v1';
  static const String resolveVanityUrl = '/ISteamUser/ResolveVanityURL/v1';
  static const String getRecentlyPlayedGames =
      '/IPlayerService/GetRecentlyPlayedGames/v1';

  // Store API endpoints (no key required, no auth).
  static const String appDetails = '/appdetails';
  static const String storeSearch = '/storesearch';

  /// Steam Web API key. Inject the real value at build time, e.g.:
  /// `flutter run --dart-define=STEAM_API_KEY=xxxxx`
  /// Never commit a real key to source control.
  static const String apiKey = String.fromEnvironment('STEAM_API_KEY');
}
