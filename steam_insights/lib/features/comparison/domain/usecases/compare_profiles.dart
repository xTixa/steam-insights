import '../../../library/domain/entities/library_game.dart';
import '../../../library/domain/repositories/library_repository.dart';
import '../../../profile/domain/repositories/profile_repository.dart';
import '../entities/comparison_result.dart';

/// Fetches both users' libraries and profiles and derives comparison stats.
/// No persistence — comparisons aren't saved (see plan §2 deviations).
class CompareProfiles {
  const CompareProfiles(this._libraryRepository, this._profileRepository);

  final LibraryRepository _libraryRepository;
  final ProfileRepository _profileRepository;

  Future<ComparisonResult> call(String steamIdA, String steamIdB) async {
    final profiles = await _profileRepository.getSavedProfiles();
    final profileA = profiles.firstWhere((p) => p.steamId64 == steamIdA);
    final profileB = profiles.firstWhere((p) => p.steamId64 == steamIdB);

    final gamesA = await _libraryRepository.getLibrary(steamIdA);
    final gamesB = await _libraryRepository.getLibrary(steamIdB);

    final appIdsB = gamesB.map((g) => g.appId).toSet();
    final commonGames = gamesA.where((g) => appIdsB.contains(g.appId)).toList();

    final hoursA = gamesA.fold<int>(
      0,
      (sum, g) => sum + g.playtimeForeverMinutes,
    );
    final hoursB = gamesB.fold<int>(
      0,
      (sum, g) => sum + g.playtimeForeverMinutes,
    );

    final favoriteA = _mostPlayed(gamesA);
    final favoriteB = _mostPlayed(gamesB);

    final playedA = gamesA
        .where((g) => g.playtimeForeverMinutes > 0)
        .length;
    final playedB = gamesB
        .where((g) => g.playtimeForeverMinutes > 0)
        .length;

    return ComparisonResult(
      profileA: profileA,
      profileB: profileB,
      commonGames: commonGames,
      moreGamesOwner: gamesA.length >= gamesB.length ? profileA : profileB,
      moreHoursOwner: hoursA >= hoursB ? profileA : profileB,
      favoriteGameA: favoriteA,
      favoriteGameB: favoriteB,
      percentLibraryPlayedA: gamesA.isEmpty ? 0 : playedA / gamesA.length,
      percentLibraryPlayedB: gamesB.isEmpty ? 0 : playedB / gamesB.length,
    );
  }

  LibraryGame? _mostPlayed(List<LibraryGame> games) {
    if (games.isEmpty) return null;
    return games.reduce(
      (a, b) => a.playtimeForeverMinutes >= b.playtimeForeverMinutes ? a : b,
    );
  }
}
