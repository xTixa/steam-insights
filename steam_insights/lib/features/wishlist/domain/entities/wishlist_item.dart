/// A user-authored wishlist entry.
class WishlistItem {
  const WishlistItem({
    required this.appId,
    required this.name,
    required this.iconUrl,
    this.priority = 0,
    this.currentPriceCents,
    this.currency,
    this.priceHistory = const [],
    required this.dateAdded,
  });

  final int appId;
  final String name;
  final String iconUrl;
  final int priority;
  final double? currentPriceCents;
  final String? currency;
  final List<WishlistPricePoint> priceHistory;
  final DateTime dateAdded;
}

class WishlistPricePoint {
  const WishlistPricePoint({
    required this.recordedAt,
    required this.priceCents,
    required this.currency,
  });

  final DateTime recordedAt;
  final double priceCents;
  final String currency;
}
