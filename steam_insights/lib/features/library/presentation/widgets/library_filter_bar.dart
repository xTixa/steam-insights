import 'package:flutter/material.dart';

import '../../domain/entities/library_filter.dart';

/// Filter selector widget (alphabetical, hours played, recently played,
/// never played, favorites only).
class LibraryFilterBar extends StatelessWidget {
  const LibraryFilterBar({
    super.key,
    required this.selected,
    required this.onChanged,
  });

  final LibraryFilter selected;
  final ValueChanged<LibraryFilter> onChanged;

  static const _labels = {
    LibraryFilter.alphabetical: 'A-Z',
    LibraryFilter.hoursPlayed: 'Hours played',
    LibraryFilter.recentlyPlayed: 'Recently played',
    LibraryFilter.neverPlayed: 'Never played',
    LibraryFilter.favoritesOnly: 'Favorites',
  };

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      child: Row(
        children: LibraryFilter.values.map((filter) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 4),
            child: ChoiceChip(
              label: Text(_labels[filter]!),
              selected: selected == filter,
              onSelected: (_) => onChanged(filter),
            ),
          );
        }).toList(),
      ),
    );
  }
}
