import '../../../../core/api/steam_web_api_client.dart';
import '../models/steam_profile_dto.dart';

abstract interface class ProfileRemoteDataSource {
  Future<String> resolveVanityUrl(String vanityUrl);

  Future<SteamProfileDto> getPlayerSummary(String steamId64);
}

class ProfileRemoteDataSourceImpl implements ProfileRemoteDataSource {
  const ProfileRemoteDataSourceImpl(this._client);

  final SteamWebApiClient _client;

  @override
  Future<String> resolveVanityUrl(String vanityUrl) async {
    final json = await _client.resolveVanityUrl(vanityUrl);
    return json['steamid'] as String;
  }

  @override
  Future<SteamProfileDto> getPlayerSummary(String steamId64) async {
    final json = await _client.getPlayerSummaries([steamId64]);
    final players = json['players'] as List<dynamic>;
    return SteamProfileDto.fromJson(players.first as Map<String, dynamic>);
  }
}
