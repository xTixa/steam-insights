import '../entities/game_details.dart';
import '../repositories/game_detail_repository.dart';

class GetGameDetails {
  const GetGameDetails(this._repository);

  final GameDetailRepository _repository;

  Future<GameDetails> call(int appId, String ownerSteamId64) =>
      _repository.getGameDetails(appId, ownerSteamId64);
}
