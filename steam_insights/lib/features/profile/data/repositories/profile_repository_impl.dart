import '../../../../core/database/models/steam_profile_model.dart';
import '../../../../core/error/exceptions.dart';
import '../../domain/entities/steam_profile.dart';
import '../../domain/repositories/profile_repository.dart';
import '../datasources/profile_local_datasource.dart';
import '../datasources/profile_remote_datasource.dart';
import '../models/steam_profile_dto.dart';

class ProfileRepositoryImpl implements ProfileRepository {
  const ProfileRepositoryImpl(this._remote, this._local);

  final ProfileRemoteDataSource _remote;
  final ProfileLocalDataSource _local;

  @override
  Future<List<SteamProfile>> getSavedProfiles() async {
    final models = await _local.getSavedProfiles();
    return models.map((model) => model.toEntity()).toList();
  }

  @override
  Future<SteamProfile> addProfile(String steamIdOrVanityUrl) async {
    final steamId64 = await _resolveSteamId64(steamIdOrVanityUrl);
    final dto = await _remote.getPlayerSummary(steamId64);
    final entity = dto.toEntity(addedAt: DateTime.now());
    await _local.saveProfile(entity.toIsarModel());
    return entity;
  }

  static final _steamId64Pattern = RegExp(r'^\d{17}$');
  static final _profileUrlPattern = RegExp(
    r'steamcommunity\.com/profiles/(\d{17})',
  );
  static final _vanityUrlPattern = RegExp(
    r'steamcommunity\.com/id/([^/]+)',
  );

  Future<String> _resolveSteamId64(String rawInput) {
    final input = rawInput.trim();

    final profileUrlMatch = _profileUrlPattern.firstMatch(input);
    if (profileUrlMatch != null) {
      return Future.value(profileUrlMatch.group(1));
    }

    final vanityUrlMatch = _vanityUrlPattern.firstMatch(input);
    if (vanityUrlMatch != null) {
      return _remote.resolveVanityUrl(vanityUrlMatch.group(1)!);
    }

    if (_steamId64Pattern.hasMatch(input)) {
      return Future.value(input);
    }

    return _remote.resolveVanityUrl(input);
  }

  @override
  Future<void> removeProfile(String steamId64) {
    return _local.removeProfile(steamId64);
  }

  @override
  Future<void> setFavoriteProfile(String steamId64) {
    return _local.setFavoriteProfile(steamId64);
  }

  @override
  Future<SteamProfile> refreshProfile(String steamId64) async {
    final SteamProfileModel? existing = await _local.getProfile(steamId64);
    if (existing == null) {
      throw const CacheException('Profile not found locally');
    }
    final dto = await _remote.getPlayerSummary(steamId64);
    final refreshed = dto.toEntity(
      isFavorite: existing.isFavorite,
      addedAt: existing.addedAt,
    );
    await _local.saveProfile(refreshed.toIsarModel());
    return refreshed;
  }
}
