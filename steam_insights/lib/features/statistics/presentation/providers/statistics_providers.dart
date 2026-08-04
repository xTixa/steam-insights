import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../library/domain/entities/library_game.dart';
import '../../../library/presentation/providers/library_providers.dart';
import '../../domain/entities/completion_stats.dart';
import '../../domain/entities/genre_playtime_slice.dart';
import '../../domain/entities/library_growth_point.dart';
import '../../domain/usecases/get_completion_stats.dart';
import '../../domain/usecases/get_genre_distribution.dart';
import '../../domain/usecases/get_library_growth.dart';
import '../../domain/usecases/get_recent_weeks_playtime.dart';
import '../../domain/usecases/get_singleplayer_multiplayer_split.dart';
import '../../domain/usecases/get_top_played_games.dart';

part 'statistics_providers.g.dart';

@riverpod
Future<List<LibraryGame>> topPlayedGames(Ref ref, String steamId64) {
  return GetTopPlayedGames(ref.watch(libraryRepositoryProvider)).call(steamId64);
}

@riverpod
Future<List<GenrePlaytimeSlice>> genreDistribution(Ref ref, String steamId64) {
  return GetGenreDistribution(ref.watch(libraryRepositoryProvider)).call(steamId64);
}

@riverpod
Future<List<LibraryGrowthPoint>> libraryGrowth(Ref ref, String steamId64) {
  return GetLibraryGrowth(ref.watch(libraryRepositoryProvider)).call(steamId64);
}

@riverpod
Future<CompletionStats> completionStats(Ref ref, String steamId64) {
  return GetCompletionStats(ref.watch(libraryRepositoryProvider)).call(steamId64);
}

@riverpod
Future<int> recentWeeksPlaytime(Ref ref, String steamId64) {
  return GetRecentWeeksPlaytime(ref.watch(libraryRepositoryProvider)).call(steamId64);
}

@riverpod
Future<SingleplayerMultiplayerSplit> singleplayerMultiplayerSplit(
  Ref ref,
  String steamId64,
) {
  return GetSingleplayerMultiplayerSplit(
    ref.watch(libraryRepositoryProvider),
  ).call(steamId64);
}
