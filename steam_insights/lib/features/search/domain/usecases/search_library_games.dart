import '../../../library/domain/entities/library_game.dart';
import '../../../library/domain/repositories/library_repository.dart';

class SearchLibraryGames {
  const SearchLibraryGames(this._libraryRepository);

  final LibraryRepository _libraryRepository;

  Future<List<LibraryGame>> call(String steamId64, String query) =>
      _libraryRepository.searchLibrary(steamId64, query);
}
