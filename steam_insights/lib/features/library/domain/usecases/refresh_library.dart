import '../entities/library_game.dart';
import '../repositories/library_repository.dart';

/// RF09 entry point — also invoked from Settings' "refresh library" action.
class RefreshLibrary {
  const RefreshLibrary(this._repository);

  final LibraryRepository _repository;

  Future<List<LibraryGame>> call(String steamId64) =>
      _repository.refreshLibrary(steamId64);
}
