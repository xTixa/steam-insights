import '../../../../core/database/models/wishlist_item_model.dart';
import '../../domain/entities/wishlist_item.dart';
import '../../domain/repositories/wishlist_repository.dart';
import '../datasources/wishlist_local_datasource.dart';
import '../datasources/wishlist_remote_datasource.dart';

class WishlistRepositoryImpl implements WishlistRepository {
  const WishlistRepositoryImpl(this._local, this._remote);

  final WishlistLocalDataSource _local;
  final WishlistRemoteDataSource _remote;

  @override
  Future<List<WishlistItem>> getWishlist(String steamId64) async {
    final models = await _local.getWishlist(steamId64);
    return models.map((model) => model.toEntity()).toList();
  }

  @override
  Future<void> addItem(String steamId64, WishlistItem item) {
    final model = WishlistItemModel()
      ..ownerSteamId64 = steamId64
      ..appId = item.appId
      ..name = item.name
      ..iconUrl = item.iconUrl
      ..priority = item.priority
      ..currentPriceCents = item.currentPriceCents
      ..currency = item.currency
      ..dateAdded = item.dateAdded;
    return _local.saveItem(model);
  }

  @override
  Future<void> removeItem(String steamId64, int appId) {
    return _local.removeItem(steamId64, appId);
  }

  @override
  Future<void> updatePriority(String steamId64, int appId, int priority) {
    return _local.updatePriority(steamId64, appId, priority);
  }

  @override
  Future<void> refreshPrices(String steamId64) async {
    final items = await _local.getWishlist(steamId64);
    for (final item in items) {
      await _remote.getPriceHistory(item.appId);
    }
  }
}

extension on WishlistItemModel {
  WishlistItem toEntity() {
    return WishlistItem(
      appId: appId,
      name: name,
      iconUrl: iconUrl,
      priority: priority,
      currentPriceCents: currentPriceCents,
      currency: currency,
      dateAdded: dateAdded,
    );
  }
}
