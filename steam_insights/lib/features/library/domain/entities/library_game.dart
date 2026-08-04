/// A single owned game as seen by domain/presentation code.
class LibraryGame {
  const LibraryGame({
    required this.appId,
    required this.name,
    required this.iconUrl,
    this.headerImageUrl,
    this.playtimeForeverMinutes = 0,
    this.playtimeLast2WeeksMinutes = 0,
    this.lastPlayed,
    this.achievementsUnlocked = 0,
    this.achievementsTotal = 0,
    this.genres = const [],
    this.categories = const [],
    this.isFavorite = false,
  });

  final int appId;
  final String name;
  final String iconUrl;
  final String? headerImageUrl;
  final int playtimeForeverMinutes;
  final int playtimeLast2WeeksMinutes;
  final DateTime? lastPlayed;
  final int achievementsUnlocked;
  final int achievementsTotal;
  final List<String> genres;
  final List<String> categories;
  final bool isFavorite;

  double get percentCompleted {
    if (achievementsTotal == 0) return 0;
    return achievementsUnlocked / achievementsTotal;
  }

  bool get isSingleplayer => categories.contains('Single-player');
  bool get isMultiplayer => categories.contains('Multi-player');
}
