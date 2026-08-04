import '../../domain/entities/game_details.dart';
import '../../domain/repositories/game_detail_repository.dart';
import '../datasources/game_detail_remote_datasource.dart';

class GameDetailRepositoryImpl implements GameDetailRepository {
  const GameDetailRepositoryImpl(this._remote);

  final GameDetailRemoteDataSource _remote;

  @override
  Future<GameDetails> getGameDetails(int appId, String ownerSteamId64) async {
    final dto = await _remote.getAppDetails(appId);
    return dto.toEntity();
  }
}
