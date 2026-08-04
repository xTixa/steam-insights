import '../repositories/library_repository.dart';

class ToggleFavoriteGame {
  const ToggleFavoriteGame(this._repository);

  final LibraryRepository _repository;

  Future<void> call(String steamId64, int appId) =>
      _repository.toggleFavoriteGame(steamId64, appId);
}
