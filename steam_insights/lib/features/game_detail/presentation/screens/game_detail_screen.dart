import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/providers/active_profile_provider.dart';
import '../../../../core/widgets/error_view.dart';
import '../../../../core/widgets/loading_indicator.dart';
import '../providers/game_detail_providers.dart';
import '../widgets/screenshot_carousel.dart';

/// Reads appId path param from GoRouter; cover/banner/description sections.
class GameDetailScreen extends ConsumerWidget {
  const GameDetailScreen({super.key, required this.appId});

  final int appId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final steamId64 = ref.watch(activeProfileControllerProvider) ?? '';
    final details = ref.watch(gameDetailsProvider(appId, steamId64));

    return Scaffold(
      body: details.when(
        loading: () => const LoadingIndicator(),
        error: (error, _) => ErrorView(message: '$error'),
        data: (game) => CustomScrollView(
          slivers: [
            SliverAppBar(
              expandedHeight: 200,
              pinned: true,
              flexibleSpace: FlexibleSpaceBar(
                title: Text(game.name),
                background: game.bannerUrl.isNotEmpty
                    ? Image.network(game.bannerUrl, fit: BoxFit.cover)
                    : null,
              ),
            ),
            SliverPadding(
              padding: const EdgeInsets.all(16),
              sliver: SliverList(
                delegate: SliverChildListDelegate([
                  Text(game.description),
                  const SizedBox(height: 16),
                  Wrap(
                    spacing: 8,
                    children: game.genres
                        .map((genre) => Chip(label: Text(genre)))
                        .toList(),
                  ),
                  const SizedBox(height: 16),
                  ScreenshotCarousel(screenshotUrls: game.screenshotUrls),
                ]),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
