import '../../../../core/api/steam_store_api_client.dart';
import '../../domain/entities/store_search_result.dart';

abstract interface class SearchRemoteDataSource {
  Future<List<StoreSearchResult>> searchStore(String query);
}

class SearchRemoteDataSourceImpl implements SearchRemoteDataSource {
  const SearchRemoteDataSourceImpl(this._client);

  final SteamStoreApiClient _client;

  @override
  Future<List<StoreSearchResult>> searchStore(String query) async {
    final json = await _client.searchStore(query);
    final items = json['items'] as List<dynamic>? ?? [];
    return items
        .map(
          (item) => StoreSearchResult(
            appId: (item as Map<String, dynamic>)['id'] as int,
            name: item['name'] as String? ?? '',
            iconUrl: item['tiny_image'] as String? ?? '',
          ),
        )
        .toList();
  }
}
