import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/providers/active_profile_provider.dart';
import '../../../../core/utils/result.dart';
import '../../../../core/widgets/empty_state.dart';
import '../../../../core/widgets/error_view.dart';
import '../providers/statistics_providers.dart';
import '../widgets/chart_section_card.dart';
import '../widgets/completion_meter.dart';
import '../widgets/genre_pie_chart.dart';
import '../widgets/library_growth_line_chart.dart';
import '../widgets/sp_mp_donut_chart.dart';
import '../widgets/stat_tile.dart';
import '../widgets/top_played_bar_chart.dart';

/// Six chart sections backed by real library data (see plan §8): top played
/// games, genre distribution, library growth, completion, recent playtime,
/// and the singleplayer/multiplayer split.
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
                  data: (games) => TopPlayedBarChart(games: games),
                  loading: () => const _ChartLoading(),
                  error: (e, _) => _ChartError(error: e),
                ),
          ),
          const SizedBox(height: 12),
          ChartSectionCard(
            title: 'Hours by genre',
            child: ref
                .watch(genreDistributionProvider(steamId64))
                .when(
                  data: (slices) => GenrePieChart(slices: slices),
                  loading: () => const _ChartLoading(),
                  error: (e, _) => _ChartError(error: e),
                ),
          ),
          const SizedBox(height: 12),
          ChartSectionCard(
            title: 'Library growth over time',
            child: ref
                .watch(libraryGrowthProvider(steamId64))
                .when(
                  data: (points) => LibraryGrowthLineChart(points: points),
                  loading: () => const _ChartLoading(),
                  error: (e, _) => _ChartError(error: e),
                ),
          ),
          const SizedBox(height: 12),
          ChartSectionCard(
            title: 'Completion',
            child: ref
                .watch(completionStatsProvider(steamId64))
                .when(
                  data: (stats) => Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CompletionMeter(
                        percentCompleted: stats.percentCompleted,
                      ),
                      const SizedBox(height: 16),
                      StatTile(
                        value: '${stats.neverStartedCount}',
                        label: 'Games never started',
                      ),
                    ],
                  ),
                  loading: () => const _ChartLoading(),
                  error: (e, _) => _ChartError(error: e),
                ),
          ),
          const SizedBox(height: 12),
          ChartSectionCard(
            title: 'Playtime in recent weeks',
            child: ref
                .watch(recentWeeksPlaytimeProvider(steamId64))
                .when(
                  data: (minutes) => StatTile(
                    value: playtimeMinutesToHoursLabel(minutes),
                    label: 'Across all games, last 2 weeks',
                  ),
                  loading: () => const _ChartLoading(),
                  error: (e, _) => _ChartError(error: e),
                ),
          ),
          const SizedBox(height: 12),
          ChartSectionCard(
            title: 'Singleplayer vs multiplayer',
            child: ref
                .watch(singleplayerMultiplayerSplitProvider(steamId64))
                .when(
                  data: (split) => SpMpDonutChart(split: split),
                  loading: () => const _ChartLoading(),
                  error: (e, _) => _ChartError(error: e),
                ),
          ),
        ],
      ),
    );
  }
}

class _ChartLoading extends StatelessWidget {
  const _ChartLoading();

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(vertical: 24),
      child: Center(child: CircularProgressIndicator()),
    );
  }
}

class _ChartError extends StatelessWidget {
  const _ChartError({required this.error});

  final Object error;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: ErrorView(message: '$error'),
    );
  }
}
