import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/providers/active_profile_provider.dart';
import '../../../../core/providers/theme_mode_provider.dart';
import '../../../../core/router/app_routes.dart';
import '../providers/settings_providers.dart';

/// Theme toggle, clear cache, refresh library, language selector (stub),
/// switch user (RF09).
class SettingsScreen extends ConsumerWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final themeMode = ref.watch(themeModeControllerProvider);
    final steamId64 = ref.watch(activeProfileControllerProvider);

    return Scaffold(
      appBar: AppBar(title: const Text('Settings')),
      body: ListView(
        children: [
          SwitchListTile(
            title: const Text('Dark mode'),
            value: themeMode == ThemeMode.dark,
            onChanged: (_) =>
                ref.read(themeModeControllerProvider.notifier).toggle(),
          ),
          ListTile(
            leading: const Icon(Icons.cleaning_services_outlined),
            title: const Text('Clear cache'),
            onTap: () => ref.read(clearCacheProvider).call(),
          ),
          ListTile(
            leading: const Icon(Icons.refresh),
            title: const Text('Refresh library'),
            onTap: steamId64 == null
                ? null
                : () => ref.read(refreshLibraryProvider).call(steamId64),
          ),
          const ListTile(
            leading: Icon(Icons.language),
            title: Text('Language'),
            subtitle: Text('English (default)'),
          ),
          ListTile(
            leading: const Icon(Icons.switch_account),
            title: const Text('Switch user'),
            onTap: () {
              ref.read(activeProfileControllerProvider.notifier).clear();
              context.go(AppRoutes.profileSelect);
            },
          ),
        ],
      ),
    );
  }
}
