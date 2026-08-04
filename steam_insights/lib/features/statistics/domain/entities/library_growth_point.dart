/// One point on the "library growth over time" line chart, sourced from
/// LibrarySnapshotModel via LibraryRepository.getLibrarySnapshots.
class LibraryGrowthPoint {
  const LibraryGrowthPoint({
    required this.date,
    required this.totalGames,
    required this.totalPlaytimeMinutes,
  });

  final DateTime date;
  final int totalGames;
  final int totalPlaytimeMinutes;
}
