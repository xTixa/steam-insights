import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:isar/isar.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'models/library_game_model.dart';
import 'models/library_snapshot_model.dart';
import 'models/steam_profile_model.dart';
import 'models/wishlist_item_model.dart';

part 'isar_service.g.dart';

/// Opens the single Isar instance for the app with every collection schema
/// known up front. Call [IsarService.open] once during bootstrap (see
/// main.dart) before [runApp] and provide the result via
/// [isarProvider.overrideWithValue] so every downstream repository/
/// datasource provider can stay synchronous.
class IsarService {
  IsarService._();

  static Future<Isar> open(String directory) {
    return Isar.open(
      [
        SteamProfileModelSchema,
        LibraryGameModelSchema,
        WishlistItemModelSchema,
        LibrarySnapshotModelSchema,
      ],
      directory: directory,
    );
  }
}

/// Overridden at bootstrap with the resolved [Isar] instance. Never read
/// before the override is applied.
@Riverpod(keepAlive: true)
Isar isar(Ref ref) {
  throw UnimplementedError(
    'isarProvider must be overridden in main.dart before use',
  );
}
