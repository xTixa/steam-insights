import 'package:isar/isar.dart';

/// Wipes cached Steam data (library games, snapshots) for the active
/// profile, or the full DB. Depends on IsarService directly since this is a
/// maintenance operation, not a domain read/write through a repository.
class ClearCache {
  const ClearCache(this._isar);

  final Isar _isar;

  Future<void> call() async {
    await _isar.writeTxn(() => _isar.clear());
  }
}
