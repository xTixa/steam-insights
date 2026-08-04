import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

/// Scaffold + Material 3 NavigationBar bound to a StatefulShellRoute's
/// navigationShell, wrapping the 5 bottom-nav tabs. Sub-routes (game
/// detail, search, comparison) are nested under their tab's root route in
/// app_router.dart rather than pushed as top-level siblings, so they push
/// onto the same branch Navigator and stay inside this Scaffold — keeping
/// the bottom bar visible and giving them a free back button via the
/// AppBar GoRouter adds automatically when the branch stack can pop.
class AppShell extends StatelessWidget {
  const AppShell({super.key, required this.navigationShell});

  final StatefulNavigationShell navigationShell;

  static const _destinations = [
    NavigationDestination(
      icon: Icon(Icons.dashboard_outlined),
      selectedIcon: Icon(Icons.dashboard),
      label: 'Dashboard',
    ),
    NavigationDestination(
      icon: Icon(Icons.videogame_asset_outlined),
      selectedIcon: Icon(Icons.videogame_asset),
      label: 'Library',
    ),
    NavigationDestination(
      icon: Icon(Icons.bar_chart_outlined),
      selectedIcon: Icon(Icons.bar_chart),
      label: 'Statistics',
    ),
    NavigationDestination(
      icon: Icon(Icons.favorite_border),
      selectedIcon: Icon(Icons.favorite),
      label: 'Wishlist',
    ),
    NavigationDestination(
      icon: Icon(Icons.settings_outlined),
      selectedIcon: Icon(Icons.settings),
      label: 'Settings',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: navigationShell,
      bottomNavigationBar: NavigationBar(
        selectedIndex: navigationShell.currentIndex,
        onDestinationSelected: (index) => navigationShell.goBranch(
          index,
          initialLocation: index == navigationShell.currentIndex,
        ),
        destinations: _destinations,
      ),
    );
  }
}
