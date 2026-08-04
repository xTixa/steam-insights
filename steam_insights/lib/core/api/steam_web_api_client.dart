import 'package:dio/dio.dart';

import 'steam_api_constants.dart';

/// Thin wrapper around [Dio] scoped to api.steampowered.com. Returns raw
/// decoded JSON; feature datasources parse the response into their own
/// DTOs.
class SteamWebApiClient {
  SteamWebApiClient(this._dio);

  final Dio _dio;

  Future<Map<String, dynamic>> getOwnedGames(String steamId64) async {
    final response = await _dio.get<Map<String, dynamic>>(
      '${SteamApiConstants.webApiBaseUrl}${SteamApiConstants.getOwnedGames}',
      queryParameters: {
        'key': SteamApiConstants.apiKey,
        'steamid': steamId64,
        'include_appinfo': true,
        'include_played_free_games': true,
      },
    );
    return response.data!['response'] as Map<String, dynamic>;
  }

  Future<Map<String, dynamic>> getPlayerSummaries(
    List<String> steamIds,
  ) async {
    final response = await _dio.get<Map<String, dynamic>>(
      '${SteamApiConstants.webApiBaseUrl}${SteamApiConstants.getPlayerSummaries}',
      queryParameters: {
        'key': SteamApiConstants.apiKey,
        'steamids': steamIds.join(','),
      },
    );
    return response.data!['response'] as Map<String, dynamic>;
  }

  Future<Map<String, dynamic>> getPlayerAchievements(
    String steamId64,
    int appId,
  ) async {
    final response = await _dio.get<Map<String, dynamic>>(
      '${SteamApiConstants.webApiBaseUrl}${SteamApiConstants.getPlayerAchievements}',
      queryParameters: {
        'key': SteamApiConstants.apiKey,
        'steamid': steamId64,
        'appid': appId,
      },
    );
    return response.data!['playerstats'] as Map<String, dynamic>;
  }

  Future<Map<String, dynamic>> resolveVanityUrl(String vanityUrl) async {
    final response = await _dio.get<Map<String, dynamic>>(
      '${SteamApiConstants.webApiBaseUrl}${SteamApiConstants.resolveVanityUrl}',
      queryParameters: {
        'key': SteamApiConstants.apiKey,
        'vanityurl': vanityUrl,
      },
    );
    final result = response.data!['response'] as Map<String, dynamic>;
    if (result['success'] != 1) {
      throw StateError('Could not resolve vanity URL: $vanityUrl');
    }
    return result;
  }

  Future<Map<String, dynamic>> getRecentlyPlayedGames(
    String steamId64,
  ) async {
    final response = await _dio.get<Map<String, dynamic>>(
      '${SteamApiConstants.webApiBaseUrl}${SteamApiConstants.getRecentlyPlayedGames}',
      queryParameters: {'key': SteamApiConstants.apiKey, 'steamid': steamId64},
    );
    return response.data!['response'] as Map<String, dynamic>;
  }
}
