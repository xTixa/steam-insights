import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../../../core/theme/app_colors.dart';
import '../../domain/entities/library_growth_point.dart';

/// Trend over time (library size across refreshes) → sequential color, one
/// series, so no legend box — the section title already names the metric.
/// Sourced from locally-accumulated snapshots (Steam's API has no
/// historical data) — see plan's "premium" library-growth note.
class LibraryGrowthLineChart extends StatelessWidget {
  const LibraryGrowthLineChart({super.key, required this.points});

  final List<LibraryGrowthPoint> points;

  @override
  Widget build(BuildContext context) {
    if (points.length < 2) {
      return const Padding(
        padding: EdgeInsets.symmetric(vertical: 8),
        child: Text(
          'Not enough history yet — refresh your library a few more times '
          'to see growth over time.',
        ),
      );
    }

    final theme = Theme.of(context);
    final lineColor = AppColors.chartSeries(theme.brightness)[0];
    final dateFormat = DateFormat.MMMd();
    final maxGames = points
        .map((p) => p.totalGames)
        .reduce((a, b) => a > b ? a : b)
        .toDouble();

    return SizedBox(
      height: 180,
      child: LineChart(
        LineChartData(
          minY: 0,
          maxY: maxGames * 1.15,
          gridData: FlGridData(
            show: true,
            drawVerticalLine: false,
            horizontalInterval: (maxGames / 4).clamp(1, double.infinity),
            getDrawingHorizontalLine: (value) => FlLine(
              color: theme.colorScheme.outlineVariant.withValues(alpha: 0.3),
              strokeWidth: 1,
            ),
          ),
          borderData: FlBorderData(show: false),
          titlesData: FlTitlesData(
            show: true,
            topTitles: const AxisTitles(),
            rightTitles: const AxisTitles(),
            leftTitles: AxisTitles(
              sideTitles: SideTitles(
                showTitles: true,
                reservedSize: 32,
                interval: (maxGames / 4).clamp(1, double.infinity),
                getTitlesWidget: (value, meta) => Text(
                  value.toInt().toString(),
                  style: theme.textTheme.bodySmall,
                ),
              ),
            ),
            bottomTitles: AxisTitles(
              sideTitles: SideTitles(
                showTitles: true,
                reservedSize: 24,
                interval: (points.length / 4).clamp(1, double.infinity),
                getTitlesWidget: (value, meta) {
                  final index = value.toInt();
                  if (index < 0 || index >= points.length) {
                    return const SizedBox.shrink();
                  }
                  return Padding(
                    padding: const EdgeInsets.only(top: 4),
                    child: Text(
                      dateFormat.format(points[index].date),
                      style: theme.textTheme.bodySmall,
                    ),
                  );
                },
              ),
            ),
          ),
          lineTouchData: LineTouchData(
            touchTooltipData: LineTouchTooltipData(
              getTooltipColor: (_) => theme.colorScheme.inverseSurface,
              getTooltipItems: (spots) => spots
                  .map(
                    (spot) => LineTooltipItem(
                      '${spot.y.toInt()} games\n'
                      '${dateFormat.format(points[spot.x.toInt()].date)}',
                      TextStyle(color: theme.colorScheme.onInverseSurface),
                    ),
                  )
                  .toList(),
            ),
          ),
          lineBarsData: [
            LineChartBarData(
              spots: [
                for (var i = 0; i < points.length; i++)
                  FlSpot(i.toDouble(), points[i].totalGames.toDouble()),
              ],
              isCurved: false,
              color: lineColor,
              barWidth: 2,
              dotData: FlDotData(
                getDotPainter: (spot, percent, bar, index) =>
                    FlDotCirclePainter(
                      radius: 4,
                      color: lineColor,
                      strokeWidth: 2,
                      strokeColor: theme.colorScheme.surface,
                    ),
              ),
              belowBarData: BarAreaData(
                show: true,
                color: lineColor.withValues(alpha: 0.1),
              ),
            ),
          ],
        ),
        duration: Duration.zero,
      ),
    );
  }
}
