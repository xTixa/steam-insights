import '../../../library/domain/entities/library_game.dart';
import '../../../library/domain/repositories/library_repository.dart';

/// Thin re-export/composition of [LibraryRepository.refreshLibrary] for the
/// Settings "Refresh library" action (RF09 entry point outside the Library
/// screen itself).
class RefreshLibrary {
  const RefreshLibrary(this._libraryRepository);

  final LibraryRepository _libraryRepository;

  Future<List<LibraryGame>> call(String steamId64) =>
      _libraryRepository.refreshLibrary(steamId64);
}
