import 'package:isar/isar.dart';

import '../../../../core/database/models/wishlist_item_model.dart';

abstract interface class WishlistLocalDataSource {
  Future<List<WishlistItemModel>> getWishlist(String steamId64);

  Future<void> saveItem(WishlistItemModel item);

  Future<void> removeItem(String steamId64, int appId);

  Future<void> updatePriority(String steamId64, int appId, int priority);
}

class WishlistLocalDataSourceImpl implements WishlistLocalDataSource {
  const WishlistLocalDataSourceImpl(this._isar);

  final Isar _isar;

  @override
  Future<List<WishlistItemModel>> getWishlist(String steamId64) {
    return _isar.wishlistItemModels
        .filter()
        .ownerSteamId64EqualTo(steamId64)
        .sortByPriority()
        .findAll();
  }

  @override
  Future<void> saveItem(WishlistItemModel item) {
    return _isar.writeTxn(() => _isar.wishlistItemModels.put(item));
  }

  @override
  Future<void> removeItem(String steamId64, int appId) async {
    await _isar.writeTxn(() async {
      final existing = await _isar.wishlistItemModels
          .filter()
          .ownerSteamId64EqualTo(steamId64)
          .appIdEqualTo(appId)
          .findFirst();
      if (existing != null) {
        await _isar.wishlistItemModels.delete(existing.id);
      }
    });
  }

  @override
  Future<void> updatePriority(
    String steamId64,
    int appId,
    int priority,
  ) async {
    await _isar.writeTxn(() async {
      final item = await _isar.wishlistItemModels
          .filter()
          .ownerSteamId64EqualTo(steamId64)
          .appIdEqualTo(appId)
          .findFirst();
      if (item != null) {
        item.priority = priority;
        await _isar.wishlistItemModels.put(item);
      }
    });
  }
}
