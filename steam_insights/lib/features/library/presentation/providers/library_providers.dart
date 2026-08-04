import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../core/database/isar_service.dart';
import '../../../../core/providers/steam_api_providers.dart';
import '../../domain/entities/library_filter.dart';
import '../../domain/entities/library_game.dart';
import '../../domain/repositories/library_repository.dart';
import '../../domain/usecases/filter_library.dart';
import '../../domain/usecases/get_library.dart';
import '../../domain/usecases/refresh_library.dart';
import '../../domain/usecases/search_library_games.dart';
import '../../domain/usecases/toggle_favorite_game.dart';
import '../../data/datasources/library_local_datasource.dart';
import '../../data/datasources/library_remote_datasource.dart';
import '../../data/repositories/library_repository_impl.dart';

part 'library_providers.g.dart';

@riverpod
LibraryRepository libraryRepository(Ref ref) {
  final remote = LibraryRemoteDataSourceImpl(
    ref.watch(steamWebApiClientProvider),
  );
  final local = LibraryLocalDataSourceImpl(ref.watch(isarProvider));
  return LibraryRepositoryImpl(remote, local);
}

@riverpod
GetLibrary getLibrary(Ref ref) => GetLibrary(ref.watch(libraryRepositoryProvider));

@riverpod
RefreshLibrary refreshLibrary(Ref ref) =>
    RefreshLibrary(ref.watch(libraryRepositoryProvider));

@riverpod
ToggleFavoriteGame toggleFavoriteGame(Ref ref) =>
    ToggleFavoriteGame(ref.watch(libraryRepositoryProvider));

@riverpod
SearchLibraryGames searchLibraryGames(Ref ref) =>
    SearchLibraryGames(ref.watch(libraryRepositoryProvider));

@riverpod
class LibraryFilterController extends _$LibraryFilterController {
  @override
  LibraryFilter build() => LibraryFilter.alphabetical;

  void setFilter(LibraryFilter filter) => state = filter;
}

@riverpod
class LibrarySearchQuery extends _$LibrarySearchQuery {
  @override
  String build() => '';

  void setQuery(String query) => state = query;
}

@riverpod
Future<List<LibraryGame>> filteredLibrary(Ref ref, String steamId64) async {
  final games = await ref.watch(getLibraryProvider).call(steamId64);
  final filter = ref.watch(libraryFilterControllerProvider);
  return const FilterLibrary().call(games, filter);
}
