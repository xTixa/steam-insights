import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../core/providers/steam_api_providers.dart';
import '../../domain/entities/game_details.dart';
import '../../domain/repositories/game_detail_repository.dart';
import '../../domain/usecases/get_game_details.dart';
import '../../data/datasources/game_detail_remote_datasource.dart';
import '../../data/repositories/game_detail_repository_impl.dart';

part 'game_detail_providers.g.dart';

@riverpod
GameDetailRepository gameDetailRepository(Ref ref) {
  final remote = GameDetailRemoteDataSourceImpl(
    ref.watch(steamStoreApiClientProvider),
    ref.watch(steamWebApiClientProvider),
  );
  return GameDetailRepositoryImpl(remote);
}

@riverpod
Future<GameDetails> gameDetails(
  Ref ref,
  int appId,
  String ownerSteamId64,
) {
  final usecase = GetGameDetails(ref.watch(gameDetailRepositoryProvider));
  return usecase.call(appId, ownerSteamId64);
}
