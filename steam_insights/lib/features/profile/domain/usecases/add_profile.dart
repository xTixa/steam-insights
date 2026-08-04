import '../entities/steam_profile.dart';
import '../repositories/profile_repository.dart';

/// Resolves a SteamID64 or vanity URL against the Steam Web API (if needed)
/// and persists the resulting profile (RF01).
class AddProfile {
  const AddProfile(this._repository);

  final ProfileRepository _repository;

  Future<SteamProfile> call(String steamIdOrVanityUrl) {
    return _repository.addProfile(steamIdOrVanityUrl);
  }
}
