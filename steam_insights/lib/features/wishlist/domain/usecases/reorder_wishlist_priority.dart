import '../repositories/wishlist_repository.dart';

class ReorderWishlistPriority {
  const ReorderWishlistPriority(this._repository);

  final WishlistRepository _repository;

  Future<void> call(String steamId64, int appId, int priority) =>
      _repository.updatePriority(steamId64, appId, priority);
}
