import '../entities/game_details.dart';

abstract interface class GameDetailRepository {
  Future<GameDetails> getGameDetails(int appId, String ownerSteamId64);
}
