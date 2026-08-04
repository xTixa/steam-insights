import '../../../library/domain/entities/library_game.dart';
import '../../../library/domain/repositories/library_repository.dart';
import '../entities/account_summary.dart';

/// Aggregates the active profile's library into dashboard stats. No own
/// data layer — reads through [LibraryRepository] (see plan §2 deviations).
class GetAccountSummary {
  const GetAccountSummary(this._libraryRepository);

  final LibraryRepository _libraryRepository;

  Future<AccountSummary> call(String steamId64) async {
    final games = await _libraryRepository.getLibrary(steamId64);

    if (games.isEmpty) {
      return const AccountSummary(
        totalGames: 0,
        totalHoursPlayed: 0,
        avgHoursPerGame: 0,
        neverPlayedCount: 0,
        percentCompleted: 0,
        achievementsObtained: 0,
      );
    }

    final totalMinutes = games.fold<int>(
      0,
      (sum, game) => sum + game.playtimeForeverMinutes,
    );
    final totalHours = totalMinutes / 60;

    LibraryGame mostPlayed = games.first;
    LibraryGame leastPlayed = games.first;
    for (final game in games) {
      if (game.playtimeForeverMinutes > mostPlayed.playtimeForeverMinutes) {
        mostPlayed = game;
      }
      if (game.playtimeForeverMinutes < leastPlayed.playtimeForeverMinutes) {
        leastPlayed = game;
      }
    }

    final neverPlayed = games
        .where((game) => game.playtimeForeverMinutes == 0)
        .length;

    final totalAchievementsPossible = games.fold<int>(
      0,
      (sum, game) => sum + game.achievementsTotal,
    );
    final totalAchievementsUnlocked = games.fold<int>(
      0,
      (sum, game) => sum + game.achievementsUnlocked,
    );
    final percentCompleted = totalAchievementsPossible == 0
        ? 0.0
        : totalAchievementsUnlocked / totalAchievementsPossible;

    return AccountSummary(
      totalGames: games.length,
      totalHoursPlayed: totalHours,
      avgHoursPerGame: totalHours / games.length,
      mostPlayedGame: mostPlayed,
      leastPlayedGame: leastPlayed,
      neverPlayedCount: neverPlayed,
      percentCompleted: percentCompleted,
      achievementsObtained: totalAchievementsUnlocked,
    );
  }
}
