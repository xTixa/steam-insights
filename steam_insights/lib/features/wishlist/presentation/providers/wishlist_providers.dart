import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../core/database/isar_service.dart';
import '../../domain/entities/wishlist_item.dart';
import '../../domain/repositories/wishlist_repository.dart';
import '../../domain/usecases/add_wishlist_item.dart';
import '../../domain/usecases/get_wishlist.dart';
import '../../domain/usecases/remove_wishlist_item.dart';
import '../../domain/usecases/reorder_wishlist_priority.dart';
import '../../data/datasources/wishlist_local_datasource.dart';
import '../../data/datasources/wishlist_remote_datasource.dart';
import '../../data/repositories/wishlist_repository_impl.dart';

part 'wishlist_providers.g.dart';

@riverpod
WishlistRepository wishlistRepository(Ref ref) {
  final local = WishlistLocalDataSourceImpl(ref.watch(isarProvider));
  const remote = WishlistRemoteDataSourceImpl();
  return WishlistRepositoryImpl(local, remote);
}

@riverpod
Future<List<WishlistItem>> wishlist(Ref ref, String steamId64) {
  return GetWishlist(ref.watch(wishlistRepositoryProvider)).call(steamId64);
}

@riverpod
AddWishlistItem addWishlistItem(Ref ref) =>
    AddWishlistItem(ref.watch(wishlistRepositoryProvider));

@riverpod
RemoveWishlistItem removeWishlistItem(Ref ref) =>
    RemoveWishlistItem(ref.watch(wishlistRepositoryProvider));

@riverpod
ReorderWishlistPriority reorderWishlistPriority(Ref ref) =>
    ReorderWishlistPriority(ref.watch(wishlistRepositoryProvider));
