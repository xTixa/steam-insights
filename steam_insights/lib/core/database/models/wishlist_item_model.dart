import 'package:isar/isar.dart';

part 'wishlist_item_model.g.dart';

/// A single point in a wishlist item's price history. Embedded objects must
/// live alongside the schema they embed in, hence this lives here rather
/// than under features/wishlist/data/models.
@embedded
class PriceHistoryPoint {
  DateTime? recordedAt;

  double? priceCents;

  String? currency;
}

/// A user-authored wishlist entry (not cached Steam data). Own Isar
/// collection since wishlist items aren't derived from a Steam API response.
@collection
class WishlistItemModel {
  Id id = Isar.autoIncrement;

  @Index(composite: [CompositeIndex('appId')])
  late String ownerSteamId64;

  late int appId;

  late String name;

  late String iconUrl;

  int priority = 0;

  double? currentPriceCents;

  String? currency;

  List<PriceHistoryPoint>? priceHistory;

  late DateTime dateAdded;
}
