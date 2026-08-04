/// A point-in-time snapshot of library size, used by statistics' "library
/// growth over time" chart. Sourced from LibrarySnapshotModel.
class LibrarySnapshot {
  const LibrarySnapshot({
    required this.snapshotDate,
    required this.totalGames,
    required this.totalPlaytimeMinutes,
  });

  final DateTime snapshotDate;
  final int totalGames;
  final int totalPlaytimeMinutes;
}
