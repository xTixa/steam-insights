/// A saved Steam profile, as seen by domain/presentation code. See
/// core/database/models/steam_profile_model.dart for the persisted shape.
class SteamProfile {
  const SteamProfile({
    required this.steamId64,
    this.vanityUrl,
    required this.personaName,
    required this.avatarUrl,
    this.isFavorite = false,
    required this.addedAt,
    this.lastSyncedAt,
  });

  final String steamId64;
  final String? vanityUrl;
  final String personaName;
  final String avatarUrl;
  final bool isFavorite;
  final DateTime addedAt;
  final DateTime? lastSyncedAt;
}
