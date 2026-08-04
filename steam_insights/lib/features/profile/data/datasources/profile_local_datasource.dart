import 'package:isar/isar.dart';

import '../../../../core/database/models/steam_profile_model.dart';

abstract interface class ProfileLocalDataSource {
  Future<List<SteamProfileModel>> getSavedProfiles();

  Future<void> saveProfile(SteamProfileModel profile);

  Future<void> removeProfile(String steamId64);

  Future<void> setFavoriteProfile(String steamId64);

  Future<SteamProfileModel?> getProfile(String steamId64);
}

class ProfileLocalDataSourceImpl implements ProfileLocalDataSource {
  const ProfileLocalDataSourceImpl(this._isar);

  final Isar _isar;

  @override
  Future<List<SteamProfileModel>> getSavedProfiles() {
    return _isar.steamProfileModels.where().findAll();
  }

  @override
  Future<void> saveProfile(SteamProfileModel profile) {
    return _isar.writeTxn(() => _isar.steamProfileModels.put(profile));
  }

  @override
  Future<void> removeProfile(String steamId64) async {
    await _isar.writeTxn(() async {
      final existing = await _isar.steamProfileModels
          .filter()
          .steamId64EqualTo(steamId64)
          .findFirst();
      if (existing != null) {
        await _isar.steamProfileModels.delete(existing.id);
      }
    });
  }

  @override
  Future<void> setFavoriteProfile(String steamId64) async {
    await _isar.writeTxn(() async {
      final all = await _isar.steamProfileModels.where().findAll();
      for (final profile in all) {
        profile.isFavorite = profile.steamId64 == steamId64;
        await _isar.steamProfileModels.put(profile);
      }
    });
  }

  @override
  Future<SteamProfileModel?> getProfile(String steamId64) {
    return _isar.steamProfileModels
        .filter()
        .steamId64EqualTo(steamId64)
        .findFirst();
  }
}
