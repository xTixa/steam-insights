import '../models/price_history_point.dart';

/// Price lookups — Steam has no official wishlist/price API for third-party
/// public use. Stubbed as a stretch/future integration.
abstract interface class WishlistRemoteDataSource {
  Future<List<PriceHistoryPointDto>> getPriceHistory(int appId);
}

class WishlistRemoteDataSourceImpl implements WishlistRemoteDataSource {
  const WishlistRemoteDataSourceImpl();

  @override
  Future<List<PriceHistoryPointDto>> getPriceHistory(int appId) {
    throw UnimplementedError(
      'WishlistRemoteDataSource.getPriceHistory: no public Steam price API',
    );
  }
}
