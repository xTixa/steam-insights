import '../../../library/domain/entities/library_game.dart';
import '../../../profile/domain/entities/steam_profile.dart';

/// Result of comparing two Steam profiles' libraries (RF07).
class ComparisonResult {
  const ComparisonResult({
    required this.profileA,
    required this.profileB,
    required this.commonGames,
    required this.moreGamesOwner,
    required this.moreHoursOwner,
    this.favoriteGameA,
    this.favoriteGameB,
    this.rarestGame,
    required this.percentLibraryPlayedA,
    required this.percentLibraryPlayedB,
  });

  final SteamProfile profileA;
  final SteamProfile profileB;
  final List<LibraryGame> commonGames;
  final SteamProfile moreGamesOwner;
  final SteamProfile moreHoursOwner;
  final LibraryGame? favoriteGameA;
  final LibraryGame? favoriteGameB;
  final LibraryGame? rarestGame;
  final double percentLibraryPlayedA;
  final double percentLibraryPlayedB;
}
