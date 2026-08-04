import 'package:flutter/material.dart';

import '../../domain/entities/steam_profile.dart';

/// Reusable row widget: avatar, name, favorite star.
class ProfileListTile extends StatelessWidget {
  const ProfileListTile({
    super.key,
    required this.profile,
    required this.onTap,
    required this.onToggleFavorite,
    this.onRemove,
  });

  final SteamProfile profile;
  final VoidCallback onTap;
  final VoidCallback onToggleFavorite;
  final VoidCallback? onRemove;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: profile.avatarUrl.isNotEmpty
            ? NetworkImage(profile.avatarUrl)
            : null,
        child: profile.avatarUrl.isEmpty ? const Icon(Icons.person) : null,
      ),
      title: Text(profile.personaName),
      subtitle: Text(profile.vanityUrl ?? profile.steamId64),
      onTap: onTap,
      trailing: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          IconButton(
            icon: Icon(
              profile.isFavorite ? Icons.star : Icons.star_border,
            ),
            onPressed: onToggleFavorite,
          ),
          if (onRemove != null)
            IconButton(
              icon: const Icon(Icons.delete_outline),
              onPressed: onRemove,
            ),
        ],
      ),
    );
  }
}
