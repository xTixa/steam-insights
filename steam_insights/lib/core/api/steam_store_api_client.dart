import 'package:dio/dio.dart';

import 'steam_api_constants.dart';

/// Thin wrapper around [Dio] scoped to store.steampowered.com/api. No key
/// required.
class SteamStoreApiClient {
  SteamStoreApiClient(this._dio);

  final Dio _dio;

  /// `appdetails` responds with `{"<appid>": {"success": bool, "data": {...}}}`
  /// — the appId itself is the top-level key.
  Future<Map<String, dynamic>> getAppDetails(int appId) async {
    final response = await _dio.get<Map<String, dynamic>>(
      '${SteamApiConstants.storeApiBaseUrl}${SteamApiConstants.appDetails}',
      queryParameters: {'appids': appId},
    );
    final entry = response.data!['$appId'] as Map<String, dynamic>;
    if (entry['success'] != true) {
      throw StateError('No store details found for appId $appId');
    }
    return entry['data'] as Map<String, dynamic>;
  }

  Future<Map<String, dynamic>> searchStore(String query) async {
    final response = await _dio.get<Map<String, dynamic>>(
      '${SteamApiConstants.storeApiBaseUrl}${SteamApiConstants.storeSearch}',
      queryParameters: {'term': query, 'cc': 'us', 'l': 'english'},
    );
    return response.data!;
  }
}
