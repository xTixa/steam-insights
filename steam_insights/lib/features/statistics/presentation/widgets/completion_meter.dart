import 'package:flutter/material.dart';

import '../../../../core/theme/app_colors.dart';

/// A single ratio against a limit → meter, not a chart. The fill carries
/// the accent hue; the unfilled track is a lighter step of the same ramp
/// so state reads across the whole bar (no separate "empty" color).
class CompletionMeter extends StatelessWidget {
  const CompletionMeter({super.key, required this.percentCompleted});

  final double percentCompleted;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final fillColor = AppColors.chartSeries(theme.brightness)[0];
    final trackColor = fillColor.withValues(alpha: 0.18);
    final clamped = percentCompleted.clamp(0.0, 1.0);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(6),
          child: LinearProgressIndicator(
            value: clamped,
            minHeight: 12,
            backgroundColor: trackColor,
            valueColor: AlwaysStoppedAnimation(fillColor),
          ),
        ),
        const SizedBox(height: 8),
        Text(
          '${(clamped * 100).toStringAsFixed(0)}% of achievements unlocked',
          style: theme.textTheme.bodySmall,
        ),
      ],
    );
  }
}
