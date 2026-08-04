import '../entities/steam_profile.dart';

/// Contract for saving/retrieving Steam profiles locally and resolving new
/// ones against the Steam Web API (RF01/RF03).
abstract interface class ProfileRepository {
  Future<List<SteamProfile>> getSavedProfiles();

  Future<SteamProfile> addProfile(String steamIdOrVanityUrl);

  Future<void> removeProfile(String steamId64);

  Future<void> setFavoriteProfile(String steamId64);

  Future<SteamProfile> refreshProfile(String steamId64);
}
