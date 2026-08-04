import '../entities/library_filter.dart';
import '../entities/library_game.dart';

/// Pure function applying a [LibraryFilter] to a list of games — no
/// repository dependency, easy to unit test in isolation.
class FilterLibrary {
  const FilterLibrary();

  List<LibraryGame> call(List<LibraryGame> games, LibraryFilter filter) {
    switch (filter) {
      case LibraryFilter.alphabetical:
        final sorted = [...games]..sort((a, b) => a.name.compareTo(b.name));
        return sorted;
      case LibraryFilter.hoursPlayed:
        final sorted = [...games]..sort(
          (a, b) =>
              b.playtimeForeverMinutes.compareTo(a.playtimeForeverMinutes),
        );
        return sorted;
      case LibraryFilter.recentlyPlayed:
        final withDate = games.where((g) => g.lastPlayed != null).toList()
          ..sort((a, b) => b.lastPlayed!.compareTo(a.lastPlayed!));
        return withDate;
      case LibraryFilter.neverPlayed:
        return games.where((g) => g.playtimeForeverMinutes == 0).toList();
      case LibraryFilter.favoritesOnly:
        return games.where((g) => g.isFavorite).toList();
    }
  }
}
