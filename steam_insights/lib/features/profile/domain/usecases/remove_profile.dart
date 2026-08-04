import '../repositories/profile_repository.dart';

class RemoveProfile {
  const RemoveProfile(this._repository);

  final ProfileRepository _repository;

  Future<void> call(String steamId64) => _repository.removeProfile(steamId64);
}
