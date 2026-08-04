/// Why [GameDetails.achievements] may be empty — the UI shows a different
/// message for each, rather than silently rendering nothing.
enum AchievementsStatus {
  /// Fetched successfully; [GameDetails.achievements] holds the result
  /// (which may itself legitimately be empty if the game has none).
  loaded,

  /// Steam rejected the request — typically a private profile/game details
  /// setting (HTTP 403), or a transient network failure.
  unavailable,
}

/// Full details for a single game's dedicated page.
class GameDetails {
  const GameDetails({
    required this.appId,
    required this.name,
    required this.coverImageUrl,
    required this.bannerUrl,
    required this.description,
    this.releaseDate,
    this.developer,
    this.publisher,
    this.priceCents,
    this.currency,
    this.genres = const [],
    this.categories = const [],
    this.achievements = const [],
    this.achievementsStatus = AchievementsStatus.loaded,
    this.playtimeMinutes = 0,
    this.screenshotUrls = const [],
  });

  final int appId;
  final String name;
  final String coverImageUrl;
  final String bannerUrl;
  final String description;
  final DateTime? releaseDate;
  final String? developer;
  final String? publisher;
  final int? priceCents;
  final String? currency;
  final List<String> genres;
  final List<String> categories;
  final List<GameAchievement> achievements;
  final AchievementsStatus achievementsStatus;
  final int playtimeMinutes;
  final List<String> screenshotUrls;
}

class GameAchievement {
  const GameAchievement({
    required this.name,
    required this.description,
    required this.unlocked,
    this.iconUrl,
  });

  final String name;
  final String description;
  final bool unlocked;
  final String? iconUrl;
}
