import '../../../library/domain/repositories/library_repository.dart';
import '../entities/library_growth_point.dart';

/// Documented trade-off (see plan §2): reads the one extra method
/// [LibraryRepository.getLibrarySnapshots] rather than owning its own
/// StatisticsRepository, keeping statistics free of a persistence layer.
class GetLibraryGrowth {
  const GetLibraryGrowth(this._libraryRepository);

  final LibraryRepository _libraryRepository;

  Future<List<LibraryGrowthPoint>> call(String steamId64) async {
    final snapshots = await _libraryRepository.getLibrarySnapshots(steamId64);
    return snapshots
        .map(
          (snapshot) => LibraryGrowthPoint(
            date: snapshot.snapshotDate,
            totalGames: snapshot.totalGames,
            totalPlaytimeMinutes: snapshot.totalPlaytimeMinutes,
          ),
        )
        .toList();
  }
}
