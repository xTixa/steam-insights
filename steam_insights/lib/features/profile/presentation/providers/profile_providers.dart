import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../core/database/isar_service.dart';
import '../../../../core/providers/steam_api_providers.dart';
import '../../domain/entities/steam_profile.dart';
import '../../domain/repositories/profile_repository.dart';
import '../../domain/usecases/add_profile.dart';
import '../../domain/usecases/get_saved_profiles.dart';
import '../../domain/usecases/remove_profile.dart';
import '../../domain/usecases/set_favorite_profile.dart';
import '../../data/datasources/profile_local_datasource.dart';
import '../../data/datasources/profile_remote_datasource.dart';
import '../../data/repositories/profile_repository_impl.dart';

part 'profile_providers.g.dart';

@riverpod
ProfileRepository profileRepository(Ref ref) {
  final remote = ProfileRemoteDataSourceImpl(ref.watch(steamWebApiClientProvider));
  final local = ProfileLocalDataSourceImpl(ref.watch(isarProvider));
  return ProfileRepositoryImpl(remote, local);
}

@riverpod
Future<List<SteamProfile>> savedProfiles(Ref ref) {
  return GetSavedProfiles(ref.watch(profileRepositoryProvider)).call();
}

@riverpod
AddProfile addProfile(Ref ref) => AddProfile(ref.watch(profileRepositoryProvider));

@riverpod
RemoveProfile removeProfile(Ref ref) =>
    RemoveProfile(ref.watch(profileRepositoryProvider));

@riverpod
SetFavoriteProfile setFavoriteProfile(Ref ref) =>
    SetFavoriteProfile(ref.watch(profileRepositoryProvider));
