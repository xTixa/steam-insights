import '../../../library/domain/repositories/library_repository.dart';
import '../entities/completion_stats.dart';

class GetSingleplayerMultiplayerSplit {
  const GetSingleplayerMultiplayerSplit(this._libraryRepository);

  final LibraryRepository _libraryRepository;

  Future<SingleplayerMultiplayerSplit> call(String steamId64) async {
    final games = await _libraryRepository.getLibrary(steamId64);
    final singleplayer = games.where((g) => g.isSingleplayer).length;
    final multiplayer = games.where((g) => g.isMultiplayer).length;
    return SingleplayerMultiplayerSplit(
      singleplayerCount: singleplayer,
      multiplayerCount: multiplayer,
    );
  }
}
