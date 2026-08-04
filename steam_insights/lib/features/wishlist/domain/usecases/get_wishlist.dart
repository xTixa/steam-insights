import '../entities/wishlist_item.dart';
import '../repositories/wishlist_repository.dart';

class GetWishlist {
  const GetWishlist(this._repository);

  final WishlistRepository _repository;

  Future<List<WishlistItem>> call(String steamId64) =>
      _repository.getWishlist(steamId64);
}
