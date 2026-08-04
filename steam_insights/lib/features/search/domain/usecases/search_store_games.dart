import '../../data/datasources/search_remote_datasource.dart';
import '../entities/store_search_result.dart';

class SearchStoreGames {
  const SearchStoreGames(this._dataSource);

  final SearchRemoteDataSource _dataSource;

  Future<List<StoreSearchResult>> call(String query) =>
      _dataSource.searchStore(query);
}
