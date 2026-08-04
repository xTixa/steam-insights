import '../entities/wishlist_item.dart';

abstract interface class WishlistRepository {
  Future<List<WishlistItem>> getWishlist(String steamId64);

  Future<void> addItem(String steamId64, WishlistItem item);

  Future<void> removeItem(String steamId64, int appId);

  Future<void> updatePriority(String steamId64, int appId, int priority);

  Future<void> refreshPrices(String steamId64);
}
