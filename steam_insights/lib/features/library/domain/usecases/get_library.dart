import '../entities/library_game.dart';
import '../repositories/library_repository.dart';

class GetLibrary {
  const GetLibrary(this._repository);

  final LibraryRepository _repository;

  Future<List<LibraryGame>> call(String steamId64) =>
      _repository.getLibrary(steamId64);
}
