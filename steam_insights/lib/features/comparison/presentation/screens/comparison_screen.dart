import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/providers/active_profile_provider.dart';
import '../../../../core/widgets/empty_state.dart';
import '../../../../core/widgets/error_view.dart';
import '../../../../core/widgets/loading_indicator.dart';
import '../../../profile/presentation/providers/profile_providers.dart';
import '../providers/comparison_providers.dart';
import '../widgets/comparison_stat_row.dart';

/// Second-profile picker plus comparison results (RF07).
class ComparisonScreen extends ConsumerWidget {
  const ComparisonScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final steamIdA = ref.watch(activeProfileControllerProvider);
    final steamIdB = ref.watch(comparisonControllerProvider);
    final savedProfiles = ref.watch(savedProfilesProvider);

    if (steamIdA == null) {
      return const Scaffold(
        body: EmptyState(message: 'No active profile selected.'),
      );
    }

    return Scaffold(
      appBar: AppBar(title: const Text('Compare Profiles')),
      body: Column(
        children: [
          savedProfiles.when(
            loading: () => const LoadingIndicator(),
            error: (error, _) => ErrorView(message: '$error'),
            data: (profiles) {
              final others = profiles
                  .where((p) => p.steamId64 != steamIdA)
                  .toList();
              return DropdownButton<String>(
                hint: const Text('Select a profile to compare'),
                value: steamIdB,
                items: others
                    .map(
                      (p) => DropdownMenuItem(
                        value: p.steamId64,
                        child: Text(p.personaName),
                      ),
                    )
                    .toList(),
                onChanged: (value) {
                  if (value != null) {
                    ref
                        .read(comparisonControllerProvider.notifier)
                        .selectProfile(value);
                  }
                },
              );
            },
          ),
          if (steamIdB != null)
            Expanded(
              child: ref
                  .watch(comparisonResultProvider(steamIdA, steamIdB))
                  .when(
                    loading: () => const LoadingIndicator(),
                    error: (error, _) => ErrorView(message: '$error'),
                    data: (result) => ListView(
                      padding: const EdgeInsets.all(16),
                      children: [
                        ComparisonStatRow(
                          label: 'Games in common',
                          valueA: '${result.commonGames.length}',
                          valueB: '${result.commonGames.length}',
                        ),
                        ComparisonStatRow(
                          label: 'More games',
                          valueA: result.moreGamesOwner.personaName,
                          valueB: '',
                        ),
                        ComparisonStatRow(
                          label: 'More hours',
                          valueA: result.moreHoursOwner.personaName,
                          valueB: '',
                        ),
                        ComparisonStatRow(
                          label: 'Favorite game',
                          valueA: result.favoriteGameA?.name ?? '-',
                          valueB: result.favoriteGameB?.name ?? '-',
                        ),
                        ComparisonStatRow(
                          label: '% library played',
                          valueA:
                              '${(result.percentLibraryPlayedA * 100).toStringAsFixed(0)}%',
                          valueB:
                              '${(result.percentLibraryPlayedB * 100).toStringAsFixed(0)}%',
                        ),
                      ],
                    ),
                  ),
            ),
        ],
      ),
    );
  }
}
