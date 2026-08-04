import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/providers/active_profile_provider.dart';
import '../../../../core/widgets/empty_state.dart';
import '../../../../core/widgets/error_view.dart';
import '../../../../core/widgets/loading_indicator.dart';
import '../providers/wishlist_providers.dart';
import '../widgets/wishlist_item_tile.dart';

/// Personal wishlist, sorted by priority.
class WishlistScreen extends ConsumerWidget {
  const WishlistScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final steamId64 = ref.watch(activeProfileControllerProvider);

    if (steamId64 == null) {
      return const Scaffold(
        body: EmptyState(message: 'No active profile selected.'),
      );
    }

    final wishlist = ref.watch(wishlistProvider(steamId64));

    return Scaffold(
      appBar: AppBar(title: const Text('Wishlist')),
      body: wishlist.when(
        loading: () => const LoadingIndicator(),
        error: (error, _) => ErrorView(message: '$error'),
        data: (items) {
          if (items.isEmpty) {
            return const EmptyState(message: 'Your wishlist is empty.');
          }
          return ListView.builder(
            itemCount: items.length,
            itemBuilder: (context, index) {
              final item = items[index];
              return WishlistItemTile(
                item: item,
                onRemove: () async {
                  await ref
                      .read(removeWishlistItemProvider)
                      .call(steamId64, item.appId);
                  ref.invalidate(wishlistProvider(steamId64));
                },
              );
            },
          );
        },
      ),
    );
  }
}
