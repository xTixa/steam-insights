import 'package:flutter/material.dart';

/// Placeholder horizontal screenshot list.
class ScreenshotCarousel extends StatelessWidget {
  const ScreenshotCarousel({super.key, required this.screenshotUrls});

  final List<String> screenshotUrls;

  @override
  Widget build(BuildContext context) {
    if (screenshotUrls.isEmpty) return const SizedBox.shrink();
    return SizedBox(
      height: 160,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: screenshotUrls.length,
        separatorBuilder: (_, _) => const SizedBox(width: 8),
        itemBuilder: (context, index) => ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Image.network(
            screenshotUrls[index],
            width: 240,
            fit: BoxFit.cover,
            errorBuilder: (context, error, stackTrace) => Container(
              width: 240,
              color: Theme.of(context).colorScheme.surfaceContainerHigh,
              child: const Icon(Icons.broken_image_outlined),
            ),
          ),
        ),
      ),
    );
  }
}
