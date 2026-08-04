import 'package:flutter/material.dart';

/// Side-by-side stat row widget: label, value for profile A, value for
/// profile B.
class ComparisonStatRow extends StatelessWidget {
  const ComparisonStatRow({
    super.key,
    required this.label,
    required this.valueA,
    required this.valueB,
  });

  final String label;
  final String valueA;
  final String valueB;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(label, style: Theme.of(context).textTheme.labelMedium),
          const SizedBox(height: 4),
          Row(
            children: [
              Expanded(child: Text(valueA, textAlign: TextAlign.center)),
              const Icon(Icons.compare_arrows, size: 16),
              Expanded(child: Text(valueB, textAlign: TextAlign.center)),
            ],
          ),
        ],
      ),
    );
  }
}
