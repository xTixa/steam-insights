import 'package:isar/isar.dart';

import '../../../../core/database/models/library_game_model.dart';
import '../../../../core/database/models/library_snapshot_model.dart';

abstract interface class LibraryLocalDataSource {
  Future<List<LibraryGameModel>> getLibrary(String steamId64);

  Future<void> replaceLibrary(
    String steamId64,
    List<LibraryGameModel> games,
  );

  Future<void> toggleFavoriteGame(String steamId64, int appId);

  Future<void> updateAchievements(
    String steamId64,
    int appId,
    int unlocked,
    int total,
  );

  Future<void> writeSnapshot(LibrarySnapshotModel snapshot);

  Future<List<LibrarySnapshotModel>> getSnapshots(String steamId64);
}

class LibraryLocalDataSourceImpl implements LibraryLocalDataSource {
  const LibraryLocalDataSourceImpl(this._isar);

  final Isar _isar;

  @override
  Future<List<LibraryGameModel>> getLibrary(String steamId64) {
    return _isar.libraryGameModels
        .filter()
        .ownerSteamId64EqualTo(steamId64)
        .findAll();
  }

  @override
  Future<void> replaceLibrary(
    String steamId64,
    List<LibraryGameModel> games,
  ) async {
    await _isar.writeTxn(() async {
      final existing = await _isar.libraryGameModels
          .filter()
          .ownerSteamId64EqualTo(steamId64)
          .findAll();

      // GetOwnedGames (the source of `games`) never returns achievement
      // counts — those are only fetched on-demand when a game's detail
      // page is opened (see features/game_detail) and persisted via
      // updateAchievements. Carry them over here so a library refresh
      // doesn't wipe out achievement/favorite state already recorded for
      // games the user has already visited.
      final existingByAppId = {for (final g in existing) g.appId: g};
      for (final incoming in games) {
        final previous = existingByAppId[incoming.appId];
        if (previous != null) {
          incoming.achievementsUnlocked = previous.achievementsUnlocked;
          incoming.achievementsTotal = previous.achievementsTotal;
          incoming.isFavorite = previous.isFavorite;
        }
      }

      await _isar.libraryGameModels.deleteAll(
        existing.map((g) => g.id).toList(),
      );
      await _isar.libraryGameModels.putAll(games);
    });
  }

  @override
  Future<void> toggleFavoriteGame(String steamId64, int appId) async {
    await _isar.writeTxn(() async {
      final game = await _isar.libraryGameModels
          .filter()
          .ownerSteamId64EqualTo(steamId64)
          .appIdEqualTo(appId)
          .findFirst();
      if (game != null) {
        game.isFavorite = !game.isFavorite;
        await _isar.libraryGameModels.put(game);
      }
    });
  }

  @override
  Future<void> updateAchievements(
    String steamId64,
    int appId,
    int unlocked,
    int total,
  ) async {
    await _isar.writeTxn(() async {
      final game = await _isar.libraryGameModels
          .filter()
          .ownerSteamId64EqualTo(steamId64)
          .appIdEqualTo(appId)
          .findFirst();
      if (game != null) {
        game.achievementsUnlocked = unlocked;
        game.achievementsTotal = total;
        await _isar.libraryGameModels.put(game);
      }
    });
  }

  @override
  Future<void> writeSnapshot(LibrarySnapshotModel snapshot) {
    return _isar.writeTxn(() => _isar.librarySnapshotModels.put(snapshot));
  }

  @override
  Future<List<LibrarySnapshotModel>> getSnapshots(String steamId64) {
    return _isar.librarySnapshotModels
        .filter()
        .ownerSteamId64EqualTo(steamId64)
        .sortBySnapshotDate()
        .findAll();
  }
}
