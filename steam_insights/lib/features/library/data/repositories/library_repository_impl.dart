import '../../../../core/database/models/library_snapshot_model.dart';
import '../../domain/entities/library_game.dart';
import '../../domain/entities/library_snapshot.dart';
import '../../domain/repositories/library_repository.dart';
import '../datasources/library_local_datasource.dart';
import '../datasources/library_remote_datasource.dart';
import '../models/owned_game_dto.dart';

class LibraryRepositoryImpl implements LibraryRepository {
  const LibraryRepositoryImpl(this._remote, this._local);

  final LibraryRemoteDataSource _remote;
  final LibraryLocalDataSource _local;

  @override
  Future<List<LibraryGame>> getLibrary(String steamId64) async {
    final models = await _local.getLibrary(steamId64);
    return models.map((model) => model.toEntity()).toList();
  }

  @override
  Future<List<LibraryGame>> refreshLibrary(String steamId64) async {
    final ownedGames = await _remote.getOwnedGames(steamId64);
    final models = ownedGames
        .map((dto) => dto.toIsarModel(steamId64))
        .toList();
    await _local.replaceLibrary(steamId64, models);

    final totalPlaytime = models.fold<int>(
      0,
      (sum, game) => sum + game.playtimeForeverMinutes,
    );
    await _local.writeSnapshot(
      LibrarySnapshotModel()
        ..ownerSteamId64 = steamId64
        ..snapshotDate = DateTime.now()
        ..totalGames = models.length
        ..totalPlaytimeMinutes = totalPlaytime,
    );

    return models.map((model) => model.toEntity()).toList();
  }

  @override
  Future<void> toggleFavoriteGame(String steamId64, int appId) {
    return _local.toggleFavoriteGame(steamId64, appId);
  }

  @override
  Future<void> updateAchievements(
    String steamId64,
    int appId,
    int unlocked,
    int total,
  ) {
    return _local.updateAchievements(steamId64, appId, unlocked, total);
  }

  @override
  Future<List<LibraryGame>> searchLibrary(String steamId64, String query) async {
    final games = await getLibrary(steamId64);
    final lowerQuery = query.toLowerCase();
    return games
        .where((game) => game.name.toLowerCase().contains(lowerQuery))
        .toList();
  }

  @override
  Future<List<LibrarySnapshot>> getLibrarySnapshots(String steamId64) async {
    final models = await _local.getSnapshots(steamId64);
    return models
        .map(
          (model) => LibrarySnapshot(
            snapshotDate: model.snapshotDate,
            totalGames: model.totalGames,
            totalPlaytimeMinutes: model.totalPlaytimeMinutes,
          ),
        )
        .toList();
  }
}
