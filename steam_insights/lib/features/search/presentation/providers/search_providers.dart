import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../core/providers/steam_api_providers.dart';
import '../../../library/domain/entities/library_game.dart';
import '../../../library/presentation/providers/library_providers.dart';
import '../../data/datasources/search_remote_datasource.dart';
import '../../domain/entities/store_search_result.dart';
import '../../domain/usecases/search_library_games.dart';
import '../../domain/usecases/search_store_games.dart';

part 'search_providers.g.dart';

@riverpod
class SearchQuery extends _$SearchQuery {
  @override
  String build() => '';

  void setQuery(String query) => state = query;
}

@riverpod
Future<List<LibraryGame>> librarySearchResults(
  Ref ref,
  String steamId64,
) async {
  final query = ref.watch(searchQueryProvider);
  if (query.isEmpty) return const [];
  final usecase = SearchLibraryGames(ref.watch(libraryRepositoryProvider));
  return usecase.call(steamId64, query);
}

@riverpod
Future<List<StoreSearchResult>> storeSearchResults(Ref ref) async {
  final query = ref.watch(searchQueryProvider);
  if (query.isEmpty) return const [];
  final dataSource = SearchRemoteDataSourceImpl(
    ref.watch(steamStoreApiClientProvider),
  );
  return SearchStoreGames(dataSource).call(query);
}
