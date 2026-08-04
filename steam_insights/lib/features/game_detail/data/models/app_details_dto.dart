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
    return AppDetailsDto(
      appId: appId,
      name: json['name'] as String? ?? '',
      headerImage: json['header_image'] as String? ?? '',
      description: json['short_description'] as String? ?? '',
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

  GameDetails toEntity({int playtimeMinutes = 0}) {
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
      playtimeMinutes: playtimeMinutes,
      screenshotUrls: screenshotUrls,
    );
  }
}
