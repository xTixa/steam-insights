import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/providers/active_profile_provider.dart';
import '../../../../core/router/app_routes.dart';
import '../../../../core/widgets/empty_state.dart';
import '../../../../core/widgets/error_view.dart';
import '../../../../core/widgets/loading_indicator.dart';
import '../../../dashboard/presentation/providers/dashboard_providers.dart';
import '../../../library/presentation/providers/library_providers.dart';
import '../providers/profile_providers.dart';
import '../widgets/profile_list_tile.dart';

/// Lists saved profiles, tap to activate and go to /dashboard, star icon to
/// favorite, menu to remove, FAB to /profile-select/add (RF01/RF03).
class ProfileSelectScreen extends ConsumerWidget {
  const ProfileSelectScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final savedProfiles = ref.watch(savedProfilesProvider);

    return Scaffold(
      appBar: AppBar(title: const Text('Select Profile')),
      body: savedProfiles.when(
        loading: () => const LoadingIndicator(),
        error: (error, _) => ErrorView(message: '$error'),
        data: (profiles) {
          if (profiles.isEmpty) {
            return const EmptyState(
              message: 'No saved profiles yet.\nAdd one to get started.',
              icon: Icons.person_add_alt,
            );
          }
          return ListView.builder(
            itemCount: profiles.length,
            itemBuilder: (context, index) {
              final profile = profiles[index];
              return ProfileListTile(
                profile: profile,
                onTap: () {
                  ref
                      .read(activeProfileControllerProvider.notifier)
                      .setActiveProfile(profile.steamId64);
                  // Fire-and-forget: populates the local cache so the
                  // dashboard/library aren't empty on first visit (RF09),
                  // then invalidates the read-side providers so screens
                  // pick up the freshly-cached data instead of stale state.
                  unawaited(_refreshAndInvalidate(ref, profile.steamId64));
                  context.go(AppRoutes.dashboard);
                },
                onToggleFavorite: () => ref
                    .read(setFavoriteProfileProvider)
                    .call(profile.steamId64),
                onRemove: () async {
                  await ref
                      .read(removeProfileProvider)
                      .call(profile.steamId64);
                  ref.invalidate(savedProfilesProvider);
                },
              );
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => context.push(AppRoutes.addProfile),
        child: const Icon(Icons.add),
      ),
    );
  }
}

Future<void> _refreshAndInvalidate(WidgetRef ref, String steamId64) async {
  try {
    await ref.read(refreshLibraryProvider).call(steamId64);
  } catch (_) {
    // Best-effort background refresh; the dashboard/library screens will
    // just keep showing whatever was cached before.
  }
  ref.invalidate(filteredLibraryProvider);
  ref.invalidate(accountSummaryProvider);
}
