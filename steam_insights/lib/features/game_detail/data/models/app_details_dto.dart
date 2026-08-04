import '../../domain/entities/game_details.dart';

/// JSON DTO for the Store API's `appdetails` response.
class AppDetailsDto {
  const AppDetailsDto({
    required this.appId,
    required this.name,
    required this.headerImage,
    required this.description,
    this.releaseDate,
    this.developers = const [],
    this.publishers = const [],
    this.priceCents,
    this.currency,
    this.genres = const [],
    this.categories = const [],
    this.screenshotUrls = const [],
  });

  factory AppDetailsDto.fromJson(int appId, Map<String, dynamic> json) {
    final priceOverview = json['price_overview'] as Map<String, dynamic>?;
    final releaseDateJson = json['release_date'] as Map<String, dynamic>?;
    final releaseDateStr = releaseDateJson?['date'] as String?;

    return AppDetailsDto(
      appId: appId,
      name: json['name'] as String? ?? '',
      headerImage: json['header_image'] as String? ?? '',
      description: json['short_description'] as String? ?? '',
      // Steam's release_date.date is a locale-formatted string (e.g.
      // "21 Mar, 2013"), not ISO 8601 — tryParse silently yields null for
      // those; a proper fix needs a dedicated date parser, out of scope here.
      releaseDate: releaseDateStr != null
          ? DateTime.tryParse(releaseDateStr)
          : null,
      priceCents: priceOverview?['final'] as int?,
      currency: priceOverview?['currency'] as String?,
      developers:
          (json['developers'] as List<dynamic>?)?.cast<String>() ?? const [],
      publishers:
          (json['publishers'] as List<dynamic>?)?.cast<String>() ?? const [],
      genres:
          (json['genres'] as List<dynamic>?)
              ?.map((g) => (g as Map<String, dynamic>)['description'] as String)
              .toList() ??
          const [],
      categories:
          (json['categories'] as List<dynamic>?)
              ?.map((c) => (c as Map<String, dynamic>)['description'] as String)
              .toList() ??
          const [],
      screenshotUrls:
          (json['screenshots'] as List<dynamic>?)
              ?.map((s) => (s as Map<String, dynamic>)['path_full'] as String)
              .toList() ??
          const [],
    );
  }

  final int appId;
  final String name;
  final String headerImage;
  final String description;
  final DateTime? releaseDate;
  final List<String> developers;
  final List<String> publishers;
  final int? priceCents;
  final String? currency;
  final List<String> genres;
  final List<String> categories;
  final List<String> screenshotUrls;

  GameDetails toEntity({
    int playtimeMinutes = 0,
    List<GameAchievement> achievements = const [],
    AchievementsStatus achievementsStatus = AchievementsStatus.loaded,
  }) {
    return GameDetails(
      appId: appId,
      name: name,
      coverImageUrl: headerImage,
      bannerUrl: headerImage,
      description: description,
      releaseDate: releaseDate,
      developer: developers.isNotEmpty ? developers.first : null,
      publisher: publishers.isNotEmpty ? publishers.first : null,
      priceCents: priceCents,
      currency: currency,
      genres: genres,
      categories: categories,
      achievements: achievements,
      achievementsStatus: achievementsStatus,
      playtimeMinutes: playtimeMinutes,
      screenshotUrls: screenshotUrls,
    );
  }
}
