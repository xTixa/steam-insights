import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/providers/active_profile_provider.dart';
import '../../../../core/utils/result.dart';
import '../../../../core/widgets/empty_state.dart';
import '../providers/statistics_providers.dart';
import '../widgets/chart_section_card.dart';

/// Section headers for each chart, wired to providers so data flow
/// compiles. Actual fl_chart rendering is follow-up work (see plan §8).
class StatisticsScreen extends ConsumerWidget {
  const StatisticsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final steamId64 = ref.watch(activeProfileControllerProvider);

    if (steamId64 == null) {
      return const Scaffold(
        body: EmptyState(message: 'No active profile selected.'),
      );
    }

    return Scaffold(
      appBar: AppBar(title: const Text('Statistics')),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          ChartSectionCard(
            title: 'Top 10 most played games',
            child: ref
                .watch(topPlayedGamesProvider(steamId64))
                .when(
                  data: (games) => Text('${games.length} games loaded'),
                  loading: () => const LinearProgressIndicator(),
                  error: (e, _) => Text('$e'),
                ),
          ),
          const SizedBox(height: 12),
          ChartSectionCard(
            title: 'Hours by genre',
            child: ref
                .watch(genreDistributionProvider(steamId64))
                .when(
                  data: (slices) => Text('${slices.length} genres'),
                  loading: () => const LinearProgressIndicator(),
                  error: (e, _) => Text('$e'),
                ),
          ),
          const SizedBox(height: 12),
          ChartSectionCard(
            title: 'Library growth over time',
            child: ref
                .watch(libraryGrowthProvider(steamId64))
                .when(
                  data: (points) => Text('${points.length} snapshots'),
                  loading: () => const LinearProgressIndicator(),
                  error: (e, _) => Text('$e'),
                ),
          ),
          const SizedBox(height: 12),
          ChartSectionCard(
            title: '% completed / never started',
            child: ref
                .watch(completionStatsProvider(steamId64))
                .when(
                  data: (stats) => Text(
                    '${(stats.percentCompleted * 100).toStringAsFixed(0)}% • '
                    '${stats.neverStartedCount} never started',
                  ),
                  loading: () => const LinearProgressIndicator(),
                  error: (e, _) => Text('$e'),
                ),
          ),
          const SizedBox(height: 12),
          ChartSectionCard(
            title: 'Playtime in recent weeks',
            child: ref
                .watch(recentWeeksPlaytimeProvider(steamId64))
                .when(
                  data: (minutes) => Text(playtimeMinutesToHoursLabel(minutes)),
                  loading: () => const LinearProgressIndicator(),
                  error: (e, _) => Text('$e'),
                ),
          ),
          const SizedBox(height: 12),
          ChartSectionCard(
            title: 'Singleplayer vs multiplayer',
            child: ref
                .watch(singleplayerMultiplayerSplitProvider(steamId64))
                .when(
                  data: (split) => Text(
                    '${split.singleplayerCount} SP • ${split.multiplayerCount} MP',
                  ),
                  loading: () => const LinearProgressIndicator(),
                  error: (e, _) => Text('$e'),
                ),
          ),
        ],
      ),
    );
  }
}
