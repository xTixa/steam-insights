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
