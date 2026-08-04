import 'package:flutter/material.dart';

import '../../../../core/theme/app_colors.dart';
import '../../../library/domain/entities/library_game.dart';

/// Horizontal bar chart: top played games by total playtime. Magnitude
/// comparison → sequential color (one hue), with the game name and hour
/// count as direct labels (there's only ever one series, so no legend).
/// Built as plain proportional-width Containers rather than fl_chart's
/// BarChart, whose columns don't fit long game-name labels the way a true
/// horizontal bar does.
class TopPlayedBarChart extends StatelessWidget {
  const TopPlayedBarChart({super.key, required this.games});

  final List<LibraryGame> games;

  @override
  Widget build(BuildContext context) {
    if (games.isEmpty) {
      return const Padding(
        padding: EdgeInsets.symmetric(vertical: 8),
        child: Text('No playtime data yet.'),
      );
    }

    final theme = Theme.of(context);
    final barColor = AppColors.chartSeries(theme.brightness)[0];
    final maxMinutes = games
        .map((g) => g.playtimeForeverMinutes)
        .reduce((a, b) => a > b ? a : b);

    return Column(
      children: [
        for (final game in games)
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 4),
            child: _BarRow(
              label: game.name,
              minutes: game.playtimeForeverMinutes,
              maxMinutes: maxMinutes,
              color: barColor,
            ),
          ),
      ],
    );
  }
}

class _BarRow extends StatelessWidget {
  const _BarRow({
    required this.label,
    required this.minutes,
    required this.maxMinutes,
    required this.color,
  });

  final String label;
  final int minutes;
  final int maxMinutes;
  final Color color;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final fraction = maxMinutes == 0 ? 0.0 : minutes / maxMinutes;
    final hoursLabel = '${(minutes / 60).toStringAsFixed(1)}h';

    return Row(
      children: [
        SizedBox(
          width: 96,
          child: Text(
            label,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: theme.textTheme.bodySmall,
          ),
        ),
        const SizedBox(width: 8),
        Expanded(
          child: LayoutBuilder(
            builder: (context, constraints) {
              // 4px rounded data-end per mark spec; a bar this short would
              // clip the radius, so floor the width at the diameter.
              final barWidth = (constraints.maxWidth * fraction).clamp(
                8.0,
                constraints.maxWidth,
              );
              return Stack(
                alignment: Alignment.centerLeft,
                children: [
                  Container(
                    height: 20,
                    width: barWidth,
                    decoration: BoxDecoration(
                      color: color,
                      borderRadius: const BorderRadius.horizontal(
                        right: Radius.circular(4),
                      ),
                    ),
                  ),
                ],
              );
            },
          ),
        ),
        const SizedBox(width: 8),
        SizedBox(
          width: 44,
          child: Text(
            hoursLabel,
            style: theme.textTheme.bodySmall,
          ),
        ),
      ],
    );
  }
}
