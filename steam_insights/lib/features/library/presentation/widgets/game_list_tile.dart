import 'package:flutter/material.dart';

import '../../../../core/utils/date_formatter.dart';
import '../../../../core/utils/result.dart';
import '../../domain/entities/library_game.dart';

/// Image, name, hours, last played, percent completed row.
class GameListTile extends StatelessWidget {
  const GameListTile({
    super.key,
    required this.game,
    required this.onTap,
    required this.onToggleFavorite,
  });

  final LibraryGame game;
  final VoidCallback onTap;
  final VoidCallback onToggleFavorite;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SizedBox(
        width: 40,
        height: 40,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(4),
          child: game.iconUrl.isNotEmpty
              ? Image.network(
                  game.iconUrl,
                  fit: BoxFit.cover,
                  errorBuilder: (context, error, stackTrace) =>
                      const Icon(Icons.videogame_asset),
                )
              : const Icon(Icons.videogame_asset),
        ),
      ),
      title: Text(game.name),
      subtitle: Text(
        '${playtimeMinutesToHoursLabel(game.playtimeForeverMinutes)} • '
        '${DateFormatter.lastPlayed(game.lastPlayed)} • '
        '${(game.percentCompleted * 100).toStringAsFixed(0)}% complete',
      ),
      onTap: onTap,
      trailing: IconButton(
        icon: Icon(game.isFavorite ? Icons.star : Icons.star_border),
        onPressed: onToggleFavorite,
      ),
    );
  }
}
