import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/providers/active_profile_provider.dart';
import '../../../../core/utils/result.dart';
import '../../../../core/widgets/error_view.dart';
import '../../../../core/widgets/loading_indicator.dart';
import '../../domain/entities/game_details.dart';
import '../providers/game_detail_providers.dart';
import '../widgets/screenshot_carousel.dart';

/// Reads appId path param from GoRouter; cover/banner/description sections.
class GameDetailScreen extends ConsumerWidget {
  const GameDetailScreen({super.key, required this.appId});

  final int appId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final steamId64 = ref.watch(activeProfileControllerProvider) ?? '';
    final details = ref.watch(gameDetailsProvider(appId, steamId64));

    return Scaffold(
      body: details.when(
        loading: () => const LoadingIndicator(),
        error: (error, _) => ErrorView(message: '$error'),
        data: (game) => CustomScrollView(
          slivers: [
            SliverAppBar(
              expandedHeight: 220,
              pinned: true,
              // Explicit back button (rather than relying on GoRouter's
              // implicit one) so it's always legible over a banner image,
              // not just when Navigator.canPop() happens to add contrast.
              leading: _ScrimIconButton(
                icon: Icons.arrow_back,
                onPressed: () => context.pop(),
              ),
              flexibleSpace: FlexibleSpaceBar(
                titlePadding: const EdgeInsetsDirectional.only(
                  start: 16,
                  bottom: 16,
                  end: 48,
                ),
                title: Text(
                  game.name,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                    shadows: [Shadow(blurRadius: 8, color: Colors.black87)],
                  ),
                ),
                background: game.bannerUrl.isNotEmpty
                    ? Stack(
                        fit: StackFit.expand,
                        children: [
                          Image.network(
                            game.bannerUrl,
                            fit: BoxFit.cover,
                            errorBuilder: (context, error, stackTrace) =>
                                Container(
                                  color: Theme.of(
                                    context,
                                  ).colorScheme.surfaceContainerHigh,
                                ),
                          ),
                          const DecoratedBox(
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                colors: [Colors.transparent, Colors.black54],
                              ),
                            ),
                          ),
                        ],
                      )
                    : Container(
                        color:
                            Theme.of(context).colorScheme.surfaceContainerHigh,
                      ),
              ),
            ),
            SliverPadding(
              padding: const EdgeInsets.all(16),
              sliver: SliverList(
                delegate: SliverChildListDelegate([
                  _MetaRow(game: game),
                  const SizedBox(height: 16),
                  Text(
                    game.description,
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                  if (game.genres.isNotEmpty) ...[
                    const SizedBox(height: 20),
                    Text(
                      'Genres',
                      style: Theme.of(context).textTheme.titleSmall,
                    ),
                    const SizedBox(height: 8),
                    Wrap(
                      spacing: 8,
                      runSpacing: 8,
                      children: game.genres
                          .map((genre) => Chip(label: Text(genre)))
                          .toList(),
                    ),
                  ],
                  if (game.screenshotUrls.isNotEmpty) ...[
                    const SizedBox(height: 20),
                    Text(
                      'Screenshots',
                      style: Theme.of(context).textTheme.titleSmall,
                    ),
                    const SizedBox(height: 8),
                    ScreenshotCarousel(screenshotUrls: game.screenshotUrls),
                  ],
                  if (game.achievementsStatus == AchievementsStatus.unavailable) ...[
                    const SizedBox(height: 20),
                    const _AchievementsUnavailableNotice(),
                  ] else if (game.achievements.isNotEmpty) ...[
                    const SizedBox(height: 20),
                    _AchievementsHeader(achievements: game.achievements),
                    const SizedBox(height: 8),
                    ...game.achievements.map(
                      (achievement) => _AchievementTile(achievement: achievement),
                    ),
                  ],
                ]),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

/// Compact row of developer/publisher/playtime/price chips, only shown for
/// fields the DTO actually populated.
class _MetaRow extends StatelessWidget {
  const _MetaRow({required this.game});

  final GameDetails game;

  @override
  Widget build(BuildContext context) {
    final chips = <Widget>[
      if (game.developer != null)
        _MetaChip(icon: Icons.code, label: game.developer!),
      if (game.publisher != null)
        _MetaChip(icon: Icons.business, label: game.publisher!),
      if (game.playtimeMinutes > 0)
        _MetaChip(
          icon: Icons.schedule,
          label: playtimeMinutesToHoursLabel(game.playtimeMinutes),
        ),
      if (game.priceCents != null)
        _MetaChip(
          icon: Icons.sell_outlined,
          label:
              '${(game.priceCents! / 100).toStringAsFixed(2)} ${game.currency ?? ''}',
        ),
    ];

    if (chips.isEmpty) return const SizedBox.shrink();

    return DefaultTextStyle.merge(
      style: Theme.of(context).textTheme.bodySmall,
      child: Wrap(spacing: 16, runSpacing: 8, children: chips),
    );
  }
}

class _MetaChip extends StatelessWidget {
  const _MetaChip({required this.icon, required this.label});

  final IconData icon;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(icon, size: 16, color: Theme.of(context).colorScheme.outline),
        const SizedBox(width: 4),
        Text(label),
      ],
    );
  }
}

/// Shown when Steam rejected the achievements request — most commonly a
/// private profile or private "game details" setting — so the user gets an
/// explanation instead of the section silently not appearing.
class _AchievementsUnavailableNotice extends StatelessWidget {
  const _AchievementsUnavailableNotice();

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: theme.colorScheme.surfaceContainerHigh,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        children: [
          Icon(Icons.lock_outline, color: theme.colorScheme.outline),
          const SizedBox(width: 12),
          Expanded(
            child: Text(
              "Achievements couldn't be loaded. This usually means the "
              'profile or game details are set to private on Steam.',
              style: theme.textTheme.bodySmall,
            ),
          ),
        ],
      ),
    );
  }
}

class _AchievementsHeader extends StatelessWidget {
  const _AchievementsHeader({required this.achievements});

  final List<GameAchievement> achievements;

  @override
  Widget build(BuildContext context) {
    final unlocked = achievements.where((a) => a.unlocked).length;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text('Achievements', style: Theme.of(context).textTheme.titleSmall),
        Text(
          '$unlocked / ${achievements.length}',
          style: Theme.of(context).textTheme.bodySmall,
        ),
      ],
    );
  }
}

class _AchievementTile extends StatelessWidget {
  const _AchievementTile({required this.achievement});

  final GameAchievement achievement;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return ListTile(
      contentPadding: EdgeInsets.zero,
      leading: Icon(
        achievement.unlocked ? Icons.emoji_events : Icons.emoji_events_outlined,
        color: achievement.unlocked
            ? theme.colorScheme.primary
            : theme.colorScheme.outline,
      ),
      title: Text(
        achievement.name,
        style: TextStyle(
          color: achievement.unlocked ? null : theme.colorScheme.outline,
        ),
      ),
      subtitle: achievement.description.isNotEmpty
          ? Text(achievement.description)
          : null,
    );
  }
}

/// A circular semi-transparent scrim behind an icon button, for legibility
/// over arbitrary banner image content.
class _ScrimIconButton extends StatelessWidget {
  const _ScrimIconButton({required this.icon, required this.onPressed});

  final IconData icon;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Material(
        color: Colors.black45,
        shape: const CircleBorder(),
        child: IconButton(
          icon: Icon(icon, color: Colors.white),
          onPressed: onPressed,
        ),
      ),
    );
  }
}
