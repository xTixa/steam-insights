import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/providers/active_profile_provider.dart';
import '../../../../core/widgets/empty_state.dart';
import '../../../../core/widgets/error_view.dart';
import '../../../../core/widgets/loading_indicator.dart';
import '../../../library/presentation/widgets/game_list_tile.dart';
import '../providers/search_providers.dart';

/// Search field with tabbed local/store results (RF06).
class SearchScreen extends ConsumerStatefulWidget {
  const SearchScreen({super.key});

  @override
  ConsumerState<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends ConsumerState<SearchScreen>
    with SingleTickerProviderStateMixin {
  late final TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final steamId64 = ref.watch(activeProfileControllerProvider);

    return Scaffold(
      appBar: AppBar(
        title: TextField(
          autofocus: true,
          decoration: const InputDecoration(
            hintText: 'Search games...',
            border: InputBorder.none,
          ),
          onChanged: (query) =>
              ref.read(searchQueryProvider.notifier).setQuery(query),
        ),
        bottom: TabBar(
          controller: _tabController,
          tabs: const [Tab(text: 'Library'), Tab(text: 'Steam Store')],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          if (steamId64 == null)
            const EmptyState(message: 'No active profile selected.')
          else
            ref
                .watch(librarySearchResultsProvider(steamId64))
                .when(
                  loading: () => const LoadingIndicator(),
                  error: (error, _) => ErrorView(message: '$error'),
                  data: (games) {
                    if (games.isEmpty) {
                      return const EmptyState(message: 'No results.');
                    }
                    return ListView.builder(
                      itemCount: games.length,
                      itemBuilder: (context, index) => GameListTile(
                        game: games[index],
                        onTap: () {},
                        onToggleFavorite: () {},
                      ),
                    );
                  },
                ),
          ref
              .watch(storeSearchResultsProvider)
              .when(
                loading: () => const LoadingIndicator(),
                error: (error, _) => ErrorView(message: '$error'),
                data: (results) {
                  if (results.isEmpty) {
                    return const EmptyState(message: 'No results.');
                  }
                  return ListView.builder(
                    itemCount: results.length,
                    itemBuilder: (context, index) {
                      final result = results[index];
                      return ListTile(
                        leading: Image.network(result.iconUrl),
                        title: Text(result.name),
                      );
                    },
                  );
                },
              ),
        ],
      ),
    );
  }
}
