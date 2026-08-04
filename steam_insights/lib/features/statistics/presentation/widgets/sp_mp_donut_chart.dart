import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

import '../../../../core/theme/app_colors.dart';
import '../../domain/entities/completion_stats.dart';

/// Part-to-whole with exactly 2 categories → donut, categorical color
/// (fixed slots 1/2), with a legend since it's 2 series.
class SpMpDonutChart extends StatelessWidget {
  const SpMpDonutChart({super.key, required this.split});

  final SingleplayerMultiplayerSplit split;

  @override
  Widget build(BuildContext context) {
    final total = split.singleplayerCount + split.multiplayerCount;
    if (total == 0) {
      return const Padding(
        padding: EdgeInsets.symmetric(vertical: 8),
        child: Text('No category data yet.'),
      );
    }

    final theme = Theme.of(context);
    final colors = AppColors.chartSeries(theme.brightness);
    final spColor = colors[0];
    final mpColor = colors[1];

    return Row(
      children: [
        SizedBox(
          width: 120,
          height: 120,
          child: PieChart(
            PieChartData(
              sectionsSpace: 2,
              centerSpaceRadius: 32,
              sections: [
                PieChartSectionData(
                  value: split.singleplayerCount.toDouble(),
                  color: spColor,
                  title: '',
                  radius: 28,
                ),
                PieChartSectionData(
                  value: split.multiplayerCount.toDouble(),
                  color: mpColor,
                  title: '',
                  radius: 28,
                ),
              ],
            ),
            duration: Duration.zero,
          ),
        ),
        const SizedBox(width: 16),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              _LegendRow(
                color: spColor,
                label: 'Singleplayer',
                count: split.singleplayerCount,
                total: total,
              ),
              const SizedBox(height: 6),
              _LegendRow(
                color: mpColor,
                label: 'Multiplayer',
                count: split.multiplayerCount,
                total: total,
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class _LegendRow extends StatelessWidget {
  const _LegendRow({
    required this.color,
    required this.label,
    required this.count,
    required this.total,
  });

  final Color color;
  final String label;
  final int count;
  final int total;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final percent = total == 0 ? 0 : (count / total * 100).round();
    return Row(
      children: [
        Container(
          width: 10,
          height: 10,
          decoration: BoxDecoration(color: color, shape: BoxShape.circle),
        ),
        const SizedBox(width: 6),
        Expanded(
          child: Text(
            '$label · $count ($percent%)',
            style: theme.textTheme.bodySmall,
          ),
        ),
      ],
    );
  }
}
