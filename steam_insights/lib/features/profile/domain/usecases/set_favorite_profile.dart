import '../repositories/profile_repository.dart';

class SetFavoriteProfile {
  const SetFavoriteProfile(this._repository);

  final ProfileRepository _repository;

  Future<void> call(String steamId64) =>
      _repository.setFavoriteProfile(steamId64);
}
