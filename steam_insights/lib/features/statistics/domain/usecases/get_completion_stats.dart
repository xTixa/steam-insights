import '../../../library/domain/repositories/library_repository.dart';
import '../entities/completion_stats.dart';

class GetCompletionStats {
  const GetCompletionStats(this._libraryRepository);

  final LibraryRepository _libraryRepository;

  Future<CompletionStats> call(String steamId64) async {
    final games = await _libraryRepository.getLibrary(steamId64);
    if (games.isEmpty) {
      return const CompletionStats(percentCompleted: 0, neverStartedCount: 0);
    }

    final totalPossible = games.fold<int>(
      0,
      (sum, game) => sum + game.achievementsTotal,
    );
    final totalUnlocked = games.fold<int>(
      0,
      (sum, game) => sum + game.achievementsUnlocked,
    );
    final neverStarted = games
        .where((game) => game.playtimeForeverMinutes == 0)
        .length;

    return CompletionStats(
      percentCompleted: totalPossible == 0 ? 0 : totalUnlocked / totalPossible,
      neverStartedCount: neverStarted,
    );
  }
}
