import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../features/comparison/presentation/screens/comparison_screen.dart';
import '../../features/dashboard/presentation/screens/dashboard_screen.dart';
import '../../features/game_detail/presentation/screens/game_detail_screen.dart';
import '../../features/library/presentation/screens/library_screen.dart';
import '../../features/profile/presentation/screens/add_profile_screen.dart';
import '../../features/profile/presentation/screens/profile_select_screen.dart';
import '../../features/search/presentation/screens/search_screen.dart';
import '../../features/settings/presentation/screens/settings_screen.dart';
import '../../features/statistics/presentation/screens/statistics_screen.dart';
import '../../features/wishlist/presentation/screens/wishlist_screen.dart';
import '../providers/active_profile_provider.dart';
import 'app_routes.dart';
import 'app_shell.dart';

part 'app_router.g.dart';

@riverpod
GoRouter appRouter(Ref ref) {
  return GoRouter(
    initialLocation: AppRoutes.splash,
    redirect: (context, state) {
      final hasActiveProfile =
          ref.read(activeProfileControllerProvider) != null;
      final onProfileSelect = state.matchedLocation.startsWith(
        AppRoutes.profileSelect,
      );
      final onSplash = state.matchedLocation == AppRoutes.splash;

      if (!hasActiveProfile && !onProfileSelect) {
        return AppRoutes.profileSelect;
      }
      if (hasActiveProfile && (onSplash || onProfileSelect)) {
        return AppRoutes.dashboard;
      }
      return null;
    },
    routes: [
      GoRoute(
        path: AppRoutes.splash,
        builder: (context, state) => const SizedBox.shrink(),
      ),
      GoRoute(
        path: AppRoutes.profileSelect,
        builder: (context, state) => const ProfileSelectScreen(),
        routes: [
          GoRoute(
            path: 'add',
            builder: (context, state) => const AddProfileScreen(),
          ),
        ],
      ),
      StatefulShellRoute.indexedStack(
        builder: (context, state, navigationShell) =>
            AppShell(navigationShell: navigationShell),
        branches: [
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: AppRoutes.dashboard,
                builder: (context, state) => const DashboardScreen(),
              ),
            ],
          ),
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: AppRoutes.library,
                builder: (context, state) => const LibraryScreen(),
              ),
            ],
          ),
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: AppRoutes.statistics,
                builder: (context, state) => const StatisticsScreen(),
              ),
            ],
          ),
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: AppRoutes.wishlist,
                builder: (context, state) => const WishlistScreen(),
              ),
            ],
          ),
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: AppRoutes.settings,
                builder: (context, state) => const SettingsScreen(),
              ),
            ],
          ),
        ],
      ),
      GoRoute(
        path: AppRoutes.gameDetailPattern,
        builder: (context, state) {
          final appId = int.parse(state.pathParameters['appId']!);
          return GameDetailScreen(appId: appId);
        },
      ),
      GoRoute(
        path: AppRoutes.comparison,
        builder: (context, state) => const ComparisonScreen(),
      ),
      GoRoute(
        path: AppRoutes.search,
        builder: (context, state) => const SearchScreen(),
      ),
    ],
  );
}
