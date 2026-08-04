import '../../../library/domain/entities/library_game.dart';
import '../../../library/domain/repositories/library_repository.dart';

/// Top 10 most played games, sorted by total playtime descending.
class GetTopPlayedGames {
  const GetTopPlayedGames(this._libraryRepository);

  final LibraryRepository _libraryRepository;

  Future<List<LibraryGame>> call(String steamId64, {int limit = 10}) async {
    final games = await _libraryRepository.getLibrary(steamId64);
    final sorted = [...games]
      ..sort(
        (a, b) => b.playtimeForeverMinutes.compareTo(a.playtimeForeverMinutes),
      );
    return sorted.take(limit).toList();
  }
}
