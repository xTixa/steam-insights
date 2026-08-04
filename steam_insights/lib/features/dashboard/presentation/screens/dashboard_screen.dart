import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/providers/active_profile_provider.dart';
import '../../../../core/router/app_routes.dart';
import '../../../../core/widgets/empty_state.dart';
import '../../../../core/widgets/error_view.dart';
import '../../../../core/widgets/loading_indicator.dart';
import '../providers/dashboard_providers.dart';
import '../widgets/summary_stat_card.dart';

/// Account summary indicators (RF05).
class DashboardScreen extends ConsumerWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final steamId64 = ref.watch(activeProfileControllerProvider);

    if (steamId64 == null) {
      return const Scaffold(
        body: EmptyState(message: 'No active profile selected.'),
      );
    }

    final summary = ref.watch(accountSummaryProvider(steamId64));

    return Scaffold(
      appBar: AppBar(
        title: const Text('Dashboard'),
        actions: [
          IconButton(
            icon: const Icon(Icons.compare_arrows),
            tooltip: 'Compare profiles',
            onPressed: () => context.push(AppRoutes.comparison),
          ),
        ],
      ),
      body: summary.when(
        loading: () => const LoadingIndicator(),
        error: (error, _) => ErrorView(message: '$error'),
        data: (s) => GridView.count(
          padding: const EdgeInsets.all(16),
          crossAxisCount: 2,
          mainAxisSpacing: 12,
          crossAxisSpacing: 12,
          childAspectRatio: 1.5,
          children: [
            SummaryStatCard(
              label: 'Total games',
              value: '${s.totalGames}',
              icon: Icons.videogame_asset,
            ),
            SummaryStatCard(
              label: 'Total hours played',
              value: s.totalHoursPlayed.toStringAsFixed(1),
              icon: Icons.schedule,
            ),
            SummaryStatCard(
              label: 'Avg hours/game',
              value: s.avgHoursPerGame.toStringAsFixed(1),
              icon: Icons.bar_chart,
            ),
            SummaryStatCard(
              label: 'Most played',
              value: s.mostPlayedGame?.name ?? '-',
              icon: Icons.emoji_events,
            ),
            SummaryStatCard(
              label: 'Least played',
              value: s.leastPlayedGame?.name ?? '-',
              icon: Icons.hourglass_empty,
            ),
            SummaryStatCard(
              label: 'Never started',
              value: '${s.neverPlayedCount}',
              icon: Icons.block,
            ),
            SummaryStatCard(
              label: '% completed',
              value: '${(s.percentCompleted * 100).toStringAsFixed(0)}%',
              icon: Icons.percent,
            ),
            SummaryStatCard(
              label: 'Achievements',
              value: '${s.achievementsObtained}',
              icon: Icons.military_tech,
            ),
          ],
        ),
      ),
    );
  }
}
