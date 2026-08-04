import '../../../library/domain/repositories/library_repository.dart';
import '../../domain/entities/game_details.dart';
import '../../domain/repositories/game_detail_repository.dart';
import '../datasources/game_detail_remote_datasource.dart';

class GameDetailRepositoryImpl implements GameDetailRepository {
  const GameDetailRepositoryImpl(this._remote, this._libraryRepository);

  final GameDetailRemoteDataSource _remote;
  final LibraryRepository _libraryRepository;

  @override
  Future<GameDetails> getGameDetails(int appId, String ownerSteamId64) async {
    final dto = await _remote.getAppDetails(appId);
    final result = await _fetchAchievements(appId, ownerSteamId64);
    return dto.toEntity(
      achievements: result.achievements,
      achievementsStatus: result.status,
    );
  }

  /// Fetches per-game achievements on demand and persists the unlocked/total
  /// counts back onto the cached LibraryGame row, so the Library list's "%
  /// completed" picks them up without a full library refresh (see plan note
  /// on LibraryRepository.updateAchievements).
  ///
  /// Steam rejects this call with HTTP 403 when the profile (or that
  /// specific game's stats) is private — a common, expected outcome, not a
  /// bug. Distinguishing that from "this game just has no achievements
  /// configured" (`success: false` with no error) lets the UI tell the user
  /// what actually happened instead of silently showing nothing.
  Future<_AchievementsFetchResult> _fetchAchievements(
    int appId,
    String ownerSteamId64,
  ) async {
    if (ownerSteamId64.isEmpty) {
      return const _AchievementsFetchResult(
        achievements: [],
        status: AchievementsStatus.unavailable,
      );
    }

    final Map<String, dynamic> json;
    try {
      json = await _remote.getPlayerAchievements(ownerSteamId64, appId);
    } catch (_) {
      // Network failure or non-2xx response (most commonly 403 for a
      // private profile/game-details setting).
      return const _AchievementsFetchResult(
        achievements: [],
        status: AchievementsStatus.unavailable,
      );
    }

    if (json['success'] != true) {
      // Successful request, but Steam says this game has no achievement
      // schema — a real "no achievements" case, not a failure.
      return const _AchievementsFetchResult(
        achievements: [],
        status: AchievementsStatus.loaded,
      );
    }

    final rawAchievements = json['achievements'] as List<dynamic>? ?? [];
    final achievements = rawAchievements
        .map(
          (a) => GameAchievement(
            name: (a as Map<String, dynamic>)['name'] as String? ?? '',
            description: a['description'] as String? ?? '',
            unlocked: (a['achieved'] as int? ?? 0) == 1,
          ),
        )
        .toList();

    final unlockedCount = achievements.where((a) => a.unlocked).length;
    await _libraryRepository.updateAchievements(
      ownerSteamId64,
      appId,
      unlockedCount,
      achievements.length,
    );

    return _AchievementsFetchResult(
      achievements: achievements,
      status: AchievementsStatus.loaded,
    );
  }
}

class _AchievementsFetchResult {
  const _AchievementsFetchResult({
    required this.achievements,
    required this.status,
  });

  final List<GameAchievement> achievements;
  final AchievementsStatus status;
}
