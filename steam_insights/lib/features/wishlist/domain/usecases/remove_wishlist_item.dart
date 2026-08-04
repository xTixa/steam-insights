import '../repositories/wishlist_repository.dart';

class RemoveWishlistItem {
  const RemoveWishlistItem(this._repository);

  final WishlistRepository _repository;

  Future<void> call(String steamId64, int appId) =>
      _repository.removeItem(steamId64, appId);
}
