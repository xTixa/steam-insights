import '../../../../core/api/steam_web_api_client.dart';
import '../models/owned_game_dto.dart';

abstract interface class LibraryRemoteDataSource {
  Future<List<OwnedGameDto>> getOwnedGames(String steamId64);

  Future<Map<String, dynamic>> getPlayerAchievements(
    String steamId64,
    int appId,
  );
}

class LibraryRemoteDataSourceImpl implements LibraryRemoteDataSource {
  const LibraryRemoteDataSourceImpl(this._client);

  final SteamWebApiClient _client;

  @override
  Future<List<OwnedGameDto>> getOwnedGames(String steamId64) async {
    final json = await _client.getOwnedGames(steamId64);
    final games = json['games'] as List<dynamic>? ?? [];
    return games
        .map((game) => OwnedGameDto.fromJson(game as Map<String, dynamic>))
        .toList();
  }

  @override
  Future<Map<String, dynamic>> getPlayerAchievements(
    String steamId64,
    int appId,
  ) {
    return _client.getPlayerAchievements(steamId64, appId);
  }
}
