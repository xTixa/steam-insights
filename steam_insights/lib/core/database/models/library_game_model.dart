import 'package:isar/isar.dart';

part 'library_game_model.g.dart';

/// Cached copy of a single owned game for a profile. This is the RF10
/// "offline last-synced data" source of truth for Library and everything
/// derived from it (dashboard, statistics, comparison, search).
@collection
class LibraryGameModel {
  Id id = Isar.autoIncrement;

  @Index(composite: [CompositeIndex('appId')])
  late String ownerSteamId64;

  late int appId;

  late String name;

  late String iconUrl;

  String? headerImageUrl;

  int playtimeForeverMinutes = 0;

  int playtimeLast2WeeksMinutes = 0;

  DateTime? lastPlayed;

  int achievementsUnlocked = 0;

  int achievementsTotal = 0;

  List<String> genres = const [];

  List<String> categories = const [];

  bool isFavorite = false;

  late DateTime cachedAt;
}
