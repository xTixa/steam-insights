import 'package:dio/dio.dart';

/// Thin wrapper around [Dio] scoped to store.steampowered.com/api (base
/// URLs and endpoint paths in steam_api_constants.dart). No key required.
/// Method bodies are stubbed for this delivery.
class SteamStoreApiClient {
  SteamStoreApiClient(this._dio);

  // ignore: unused_field
  final Dio _dio;

  Future<Map<String, dynamic>> getAppDetails(int appId) {
    throw UnimplementedError('SteamStoreApiClient.getAppDetails');
  }

  Future<Map<String, dynamic>> searchStore(String query) {
    throw UnimplementedError('SteamStoreApiClient.searchStore');
  }
}
