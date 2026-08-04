import '../../../../core/database/models/steam_profile_model.dart';
import '../../domain/entities/steam_profile.dart';

/// JSON DTO for GetPlayerSummaries/ResolveVanityURL responses, plus mappers
/// to/from the domain entity and the persisted Isar model.
class SteamProfileDto {
  const SteamProfileDto({
    required this.steamId64,
    this.vanityUrl,
    required this.personaName,
    required this.avatarUrl,
  });

  factory SteamProfileDto.fromJson(Map<String, dynamic> json) {
    return SteamProfileDto(
      steamId64: json['steamid'] as String,
      vanityUrl: json['vanityurl'] as String?,
      personaName: json['personaname'] as String? ?? '',
      avatarUrl: json['avatarfull'] as String? ?? '',
    );
  }

  final String steamId64;
  final String? vanityUrl;
  final String personaName;
  final String avatarUrl;

  SteamProfile toEntity({bool isFavorite = false, DateTime? addedAt}) {
    return SteamProfile(
      steamId64: steamId64,
      vanityUrl: vanityUrl,
      personaName: personaName,
      avatarUrl: avatarUrl,
      isFavorite: isFavorite,
      addedAt: addedAt ?? DateTime.now(),
      lastSyncedAt: DateTime.now(),
    );
  }
}

extension SteamProfileModelMapper on SteamProfileModel {
  SteamProfile toEntity() {
    return SteamProfile(
      steamId64: steamId64,
      vanityUrl: vanityUrl,
      personaName: personaName,
      avatarUrl: avatarUrl,
      isFavorite: isFavorite,
      addedAt: addedAt,
      lastSyncedAt: lastSyncedAt,
    );
  }
}

extension SteamProfileEntityMapper on SteamProfile {
  SteamProfileModel toIsarModel() {
    return SteamProfileModel()
      ..steamId64 = steamId64
      ..vanityUrl = vanityUrl
      ..personaName = personaName
      ..avatarUrl = avatarUrl
      ..isFavorite = isFavorite
      ..addedAt = addedAt
      ..lastSyncedAt = lastSyncedAt;
  }
}
