import '../entities/library_game.dart';
import '../repositories/library_repository.dart';

class SearchLibraryGames {
  const SearchLibraryGames(this._repository);

  final LibraryRepository _repository;

  Future<List<LibraryGame>> call(String steamId64, String query) =>
      _repository.searchLibrary(steamId64, query);
}
