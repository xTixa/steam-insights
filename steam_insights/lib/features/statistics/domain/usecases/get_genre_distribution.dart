import '../../../library/domain/repositories/library_repository.dart';
import '../entities/genre_playtime_slice.dart';

/// Distribution of playtime minutes across genres.
class GetGenreDistribution {
  const GetGenreDistribution(this._libraryRepository);

  final LibraryRepository _libraryRepository;

  Future<List<GenrePlaytimeSlice>> call(String steamId64) async {
    final games = await _libraryRepository.getLibrary(steamId64);
    final minutesByGenre = <String, int>{};
    for (final game in games) {
      for (final genre in game.genres) {
        minutesByGenre[genre] =
            (minutesByGenre[genre] ?? 0) + game.playtimeForeverMinutes;
      }
    }
    return minutesByGenre.entries
        .map(
          (entry) =>
              GenrePlaytimeSlice(genre: entry.key, totalMinutes: entry.value),
        )
        .toList();
  }
}
