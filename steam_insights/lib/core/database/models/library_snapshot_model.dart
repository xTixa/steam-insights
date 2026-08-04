import 'package:isar/isar.dart';

part 'library_snapshot_model.g.dart';

/// One row written every time a library refresh (RF09) runs, so the
/// "library growth over time" statistic can plot history using only
/// locally accumulated snapshots — Steam's API exposes no historical data,
/// so this is app-generated history (a "premium" portfolio differentiator).
@collection
class LibrarySnapshotModel {
  Id id = Isar.autoIncrement;

  @Index(composite: [CompositeIndex('snapshotDate')])
  late String ownerSteamId64;

  late DateTime snapshotDate;

  late int totalGames;

  late int totalPlaytimeMinutes;
}
