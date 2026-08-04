import '../../../../core/api/steam_store_api_client.dart';
import '../../../../core/api/steam_web_api_client.dart';
import '../models/app_details_dto.dart';

abstract interface class GameDetailRemoteDataSource {
  Future<AppDetailsDto> getAppDetails(int appId);

  Future<Map<String, dynamic>> getPlayerAchievements(
    String steamId64,
    int appId,
  );
}

class GameDetailRemoteDataSourceImpl implements GameDetailRemoteDataSource {
  const GameDetailRemoteDataSourceImpl(this._storeClient, this._webClient);

  final SteamStoreApiClient _storeClient;
  final SteamWebApiClient _webClient;

  @override
  Future<AppDetailsDto> getAppDetails(int appId) async {
    final json = await _storeClient.getAppDetails(appId);
    return AppDetailsDto.fromJson(appId, json);
  }

  @override
  Future<Map<String, dynamic>> getPlayerAchievements(
    String steamId64,
    int appId,
  ) {
    return _webClient.getPlayerAchievements(steamId64, appId);
  }
}
