import '../entities/wishlist_item.dart';
import '../repositories/wishlist_repository.dart';

class AddWishlistItem {
  const AddWishlistItem(this._repository);

  final WishlistRepository _repository;

  Future<void> call(String steamId64, WishlistItem item) =>
      _repository.addItem(steamId64, item);
}
