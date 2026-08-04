import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

/// Scaffold + Material 3 NavigationBar bound to a StatefulShellRoute's
/// navigationShell, wrapping the 5 bottom-nav tabs.
class AppShell extends StatelessWidget {
  const AppShell({super.key, required this.navigationShell});

  final StatefulNavigationShell navigationShell;

  static const _destinations = [
    NavigationDestination(icon: Icon(Icons.dashboard_outlined), label: 'Dashboard'),
    NavigationDestination(icon: Icon(Icons.videogame_asset_outlined), label: 'Library'),
    NavigationDestination(icon: Icon(Icons.bar_chart_outlined), label: 'Statistics'),
    NavigationDestination(icon: Icon(Icons.favorite_border), label: 'Wishlist'),
    NavigationDestination(icon: Icon(Icons.settings_outlined), label: 'Settings'),
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
