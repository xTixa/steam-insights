import 'package:flutter/material.dart';

import '../../../../core/utils/date_formatter.dart';
import '../../domain/entities/wishlist_item.dart';

class WishlistItemTile extends StatelessWidget {
  const WishlistItemTile({
    super.key,
    required this.item,
    required this.onRemove,
  });

  final WishlistItem item;
  final VoidCallback onRemove;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: item.iconUrl.isNotEmpty
          ? Image.network(item.iconUrl, width: 40, height: 40)
          : const Icon(Icons.videogame_asset),
      title: Text(item.name),
      subtitle: Text(
        'Priority ${item.priority} • Added ${DateFormatter.dateAdded(item.dateAdded)}'
        '${item.currentPriceCents != null ? ' • ${(item.currentPriceCents! / 100).toStringAsFixed(2)} ${item.currency ?? ''}' : ''}',
      ),
      trailing: IconButton(
        icon: const Icon(Icons.delete_outline),
        onPressed: onRemove,
      ),
    );
  }
}
