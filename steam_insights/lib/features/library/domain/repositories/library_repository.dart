import '../entities/library_game.dart';
import '../entities/library_snapshot.dart';

/// Contract for reading/refreshing a profile's game library (RF04/RF09/RF10).
/// [getLibrarySnapshots] is consumed by features/statistics' library-growth
/// chart — kept here rather than a separate StatisticsRepository since it's
/// just another read of library-owned data (see plan §2 deviations).
abstract interface class LibraryRepository {
  Future<List<LibraryGame>> getLibrary(String steamId64);

  /// Fetches fresh data from the Steam Web API, rewrites the local cache,
  /// and appends a new [LibrarySnapshot] row (RF09).
  Future<List<LibraryGame>> refreshLibrary(String steamId64);

  Future<void> toggleFavoriteGame(String steamId64, int appId);

  Future<List<LibraryGame>> searchLibrary(String steamId64, String query);

  Future<List<LibrarySnapshot>> getLibrarySnapshots(String steamId64);
}
