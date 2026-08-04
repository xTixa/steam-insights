import '../../../library/domain/repositories/library_repository.dart';

/// Total playtime (minutes) across the library in the last 2 weeks.
class GetRecentWeeksPlaytime {
  const GetRecentWeeksPlaytime(this._libraryRepository);

  final LibraryRepository _libraryRepository;

  Future<int> call(String steamId64) async {
    final games = await _libraryRepository.getLibrary(steamId64);
    return games.fold<int>(
      0,
      (sum, game) => sum + game.playtimeLast2WeeksMinutes,
    );
  }
}
