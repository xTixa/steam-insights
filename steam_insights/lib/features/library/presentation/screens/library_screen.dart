import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/providers/active_profile_provider.dart';
import '../../../../core/router/app_routes.dart';
import '../../../../core/widgets/empty_state.dart';
import '../../../../core/widgets/error_view.dart';
import '../../../../core/widgets/loading_indicator.dart';
import '../providers/library_providers.dart';
import '../widgets/game_list_tile.dart';
import '../widgets/library_filter_bar.dart';

/// Filter chips + search field + list of games (RF04/RF06).
class LibraryScreen extends ConsumerWidget {
  const LibraryScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final steamId64 = ref.watch(activeProfileControllerProvider);
    final filter = ref.watch(libraryFilterControllerProvider);

    if (steamId64 == null) {
      return const Scaffold(
        body: EmptyState(message: 'No active profile selected.'),
      );
    }

    final library = ref.watch(filteredLibraryProvider(steamId64));

    return Scaffold(
      appBar: AppBar(
        title: const Text('Library'),
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () => context.push(AppRoutes.search),
          ),
        ],
      ),
      body: Column(
        children: [
          LibraryFilterBar(
            selected: filter,
            onChanged: (newFilter) => ref
                .read(libraryFilterControllerProvider.notifier)
                .setFilter(newFilter),
          ),
          Expanded(
            child: library.when(
              loading: () => const LoadingIndicator(),
              error: (error, _) => ErrorView(message: '$error'),
              data: (games) {
                if (games.isEmpty) {
                  return const EmptyState(message: 'No games found.');
                }
                return ListView.builder(
                  itemCount: games.length,
                  itemBuilder: (context, index) {
                    final game = games[index];
                    return GameListTile(
                      game: game,
                      onTap: () =>
                          context.push(AppRoutes.gameDetail(game.appId)),
                      onToggleFavorite: () => ref
                          .read(toggleFavoriteGameProvider)
                          .call(steamId64, game.appId),
                    );
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
