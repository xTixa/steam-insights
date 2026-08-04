import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

import '../../../../core/theme/app_colors.dart';
import '../../domain/entities/genre_playtime_slice.dart';

/// Part-to-whole distribution of playtime across genres → categorical
/// color, fixed hue order (never re-sorted by value — identity, not rank).
/// Past 8 genres the tail folds into "Other" per the series-count ladder.
class GenrePieChart extends StatelessWidget {
  const GenrePieChart({super.key, required this.slices});

  final List<GenrePlaytimeSlice> slices;

  static const int _maxSlices = 7;

  @override
  Widget build(BuildContext context) {
    if (slices.isEmpty) {
      return const Padding(
        padding: EdgeInsets.symmetric(vertical: 8),
        child: Text('No genre data yet.'),
      );
    }

    final theme = Theme.of(context);
    final colors = AppColors.chartSeries(theme.brightness);

    final sorted = [...slices]
      ..sort((a, b) => b.totalMinutes.compareTo(a.totalMinutes));
    final display = <GenrePlaytimeSlice>[];
    if (sorted.length > _maxSlices) {
      display.addAll(sorted.take(_maxSlices - 1));
      final otherTotal = sorted
          .skip(_maxSlices - 1)
          .fold<int>(0, (sum, s) => sum + s.totalMinutes);
      display.add(GenrePlaytimeSlice(genre: 'Other', totalMinutes: otherTotal));
    } else {
      display.addAll(sorted);
    }

    final total = display.fold<int>(0, (sum, s) => sum + s.totalMinutes);

    return Column(
      children: [
        SizedBox(
          height: 180,
          child: PieChart(
            PieChartData(
              sectionsSpace: 2, // surface gap between touching marks
              centerSpaceRadius: 40,
              sections: [
                for (var i = 0; i < display.length; i++)
                  PieChartSectionData(
                    value: display[i].totalMinutes.toDouble(),
                    color: colors[i % colors.length],
                    title: '',
                    radius: 60,
                  ),
              ],
            ),
            duration: Duration.zero,
          ),
        ),
        const SizedBox(height: 12),
        // Legend — mandatory for 2+ series so identity never rides on
        // color-matching alone.
        Wrap(
          spacing: 12,
          runSpacing: 8,
          children: [
            for (var i = 0; i < display.length; i++)
              _LegendEntry(
                color: colors[i % colors.length],
                label: display[i].genre,
                percent: total == 0
                    ? 0
                    : display[i].totalMinutes / total * 100,
              ),
          ],
        ),
      ],
    );
  }
}

class _LegendEntry extends StatelessWidget {
  const _LegendEntry({
    required this.color,
    required this.label,
    required this.percent,
  });

  final Color color;
  final String label;
  final double percent;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          width: 10,
          height: 10,
          decoration: BoxDecoration(color: color, shape: BoxShape.circle),
        ),
        const SizedBox(width: 6),
        Text(
          '$label (${percent.toStringAsFixed(0)}%)',
          style: Theme.of(context).textTheme.bodySmall,
        ),
      ],
    );
  }
}
