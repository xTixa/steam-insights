import '../../../library/domain/entities/library_game.dart';

/// Aggregate stats shown on the Dashboard (RF05).
class AccountSummary {
  const AccountSummary({
    required this.totalGames,
    required this.totalHoursPlayed,
    required this.avgHoursPerGame,
    this.mostPlayedGame,
    this.leastPlayedGame,
    required this.neverPlayedCount,
    required this.percentCompleted,
    required this.achievementsObtained,
  });

  final int totalGames;
  final double totalHoursPlayed;
  final double avgHoursPerGame;
  final LibraryGame? mostPlayedGame;
  final LibraryGame? leastPlayedGame;
  final int neverPlayedCount;
  final double percentCompleted;
  final int achievementsObtained;
}
