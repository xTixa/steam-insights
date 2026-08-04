import '../entities/steam_profile.dart';
import '../repositories/profile_repository.dart';

class GetSavedProfiles {
  const GetSavedProfiles(this._repository);

  final ProfileRepository _repository;

  Future<List<SteamProfile>> call() => _repository.getSavedProfiles();
}
