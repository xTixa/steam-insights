// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wishlist_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$wishlistRepositoryHash() =>
    r'ee4fd13e0e77e343b38518c8cc6c88d12f8da51d';

/// See also [wishlistRepository].
@ProviderFor(wishlistRepository)
final wishlistRepositoryProvider =
    AutoDisposeProvider<WishlistRepository>.internal(
  wishlistRepository,
  name: r'wishlistRepositoryProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$wishlistRepositoryHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef WishlistRepositoryRef = AutoDisposeProviderRef<WishlistRepository>;
String _$wishlistHash() => r'd4d1f3d7fca8ad510af79f79bff043c8cf0a65d1';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

/// See also [wishlist].
@ProviderFor(wishlist)
const wishlistProvider = WishlistFamily();

/// See also [wishlist].
class WishlistFamily extends Family<AsyncValue<List<WishlistItem>>> {
  /// See also [wishlist].
  const WishlistFamily();

  /// See also [wishlist].
  WishlistProvider call(
    String steamId64,
  ) {
    return WishlistProvider(
      steamId64,
    );
  }

  @override
  WishlistProvider getProviderOverride(
    covariant WishlistProvider provider,
  ) {
    return call(
      provider.steamId64,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'wishlistProvider';
}

/// See also [wishlist].
class WishlistProvider extends AutoDisposeFutureProvider<List<WishlistItem>> {
  /// See also [wishlist].
  WishlistProvider(
    String steamId64,
  ) : this._internal(
          (ref) => wishlist(
            ref as WishlistRef,
            steamId64,
          ),
          from: wishlistProvider,
          name: r'wishlistProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$wishlistHash,
          dependencies: WishlistFamily._dependencies,
          allTransitiveDependencies: WishlistFamily._allTransitiveDependencies,
          steamId64: steamId64,
        );

  WishlistProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.steamId64,
  }) : super.internal();

  final String steamId64;

  @override
  Override overrideWith(
    FutureOr<List<WishlistItem>> Function(WishlistRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: WishlistProvider._internal(
        (ref) => create(ref as WishlistRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        steamId64: steamId64,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<List<WishlistItem>> createElement() {
    return _WishlistProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is WishlistProvider && other.steamId64 == steamId64;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, steamId64.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin WishlistRef on AutoDisposeFutureProviderRef<List<WishlistItem>> {
  /// The parameter `steamId64` of this provider.
  String get steamId64;
}

class _WishlistProviderElement
    extends AutoDisposeFutureProviderElement<List<WishlistItem>>
    with WishlistRef {
  _WishlistProviderElement(super.provider);

  @override
  String get steamId64 => (origin as WishlistProvider).steamId64;
}

String _$addWishlistItemHash() => r'7b7530e36920075a6b0ff0481a71aabc699cc748';

/// See also [addWishlistItem].
@ProviderFor(addWishlistItem)
final addWishlistItemProvider = AutoDisposeProvider<AddWishlistItem>.internal(
  addWishlistItem,
  name: r'addWishlistItemProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$addWishlistItemHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef AddWishlistItemRef = AutoDisposeProviderRef<AddWishlistItem>;
String _$removeWishlistItemHash() =>
    r'28170319e3dc93400c6f40af057d910eb75dbf2b';

/// See also [removeWishlistItem].
@ProviderFor(removeWishlistItem)
final removeWishlistItemProvider =
    AutoDisposeProvider<RemoveWishlistItem>.internal(
  removeWishlistItem,
  name: r'removeWishlistItemProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$removeWishlistItemHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef RemoveWishlistItemRef = AutoDisposeProviderRef<RemoveWishlistItem>;
String _$reorderWishlistPriorityHash() =>
    r'81a732911a7ed7bca06586ddd2624208a692e7c1';

/// See also [reorderWishlistPriority].
@ProviderFor(reorderWishlistPriority)
final reorderWishlistPriorityProvider =
    AutoDisposeProvider<ReorderWishlistPriority>.internal(
  reorderWishlistPriority,
  name: r'reorderWishlistPriorityProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$reorderWishlistPriorityHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef ReorderWishlistPriorityRef
    = AutoDisposeProviderRef<ReorderWishlistPriority>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
