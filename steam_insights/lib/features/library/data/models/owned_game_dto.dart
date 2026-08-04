import '../../../../core/database/models/library_game_model.dart';
import '../../domain/entities/library_game.dart';

/// JSON DTO for a single item in GetOwnedGames' `games` array.
class OwnedGameDto {
  const OwnedGameDto({
    required this.appId,
    required this.name,
    required this.iconUrl,
    required this.playtimeForeverMinutes,
    required this.playtimeLast2WeeksMinutes,
  });

  factory OwnedGameDto.fromJson(Map<String, dynamic> json) {
    return OwnedGameDto(
      appId: json['appid'] as int,
      name: json['name'] as String? ?? '',
      iconUrl: json['img_icon_url'] as String? ?? '',
      playtimeForeverMinutes: json['playtime_forever'] as int? ?? 0,
      playtimeLast2WeeksMinutes: json['playtime_2weeks'] as int? ?? 0,
    );
  }

  final int appId;
  final String name;
  final String iconUrl;
  final int playtimeForeverMinutes;
  final int playtimeLast2WeeksMinutes;

  LibraryGameModel toIsarModel(String ownerSteamId64) {
    return LibraryGameModel()
      ..ownerSteamId64 = ownerSteamId64
      ..appId = appId
      ..name = name
      ..iconUrl = iconUrl
      ..playtimeForeverMinutes = playtimeForeverMinutes
      ..playtimeLast2WeeksMinutes = playtimeLast2WeeksMinutes
      ..cachedAt = DateTime.now();
  }
}

extension LibraryGameModelMapper on LibraryGameModel {
  LibraryGame toEntity() {
    return LibraryGame(
      appId: appId,
      name: name,
      iconUrl: iconUrl,
      headerImageUrl: headerImageUrl,
      playtimeForeverMinutes: playtimeForeverMinutes,
      playtimeLast2WeeksMinutes: playtimeLast2WeeksMinutes,
      lastPlayed: lastPlayed,
      achievementsUnlocked: achievementsUnlocked,
      achievementsTotal: achievementsTotal,
      genres: genres,
      categories: categories,
      isFavorite: isFavorite,
    );
  }
}
