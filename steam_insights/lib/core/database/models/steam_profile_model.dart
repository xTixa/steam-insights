import 'package:isar/isar.dart';

part 'steam_profile_model.g.dart';

/// A saved Steam profile (RF01/RF03). Multiple rows supported from day one.
/// [isFavorite] marks the pinned/default profile to open on launch — the
/// currently *active* profile for the session is separate transient state,
/// see core/providers/active_profile_provider.dart.
@collection
class SteamProfileModel {
  Id id = Isar.autoIncrement;

  @Index(unique: true)
  late String steamId64;

  String? vanityUrl;

  late String personaName;

  late String avatarUrl;

  bool isFavorite = false;

  late DateTime addedAt;

  DateTime? lastSyncedAt;
}
