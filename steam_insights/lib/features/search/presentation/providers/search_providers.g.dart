// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$librarySearchResultsHash() =>
    r'0b9ea3134c44bfe4697aadb87cd13cf10f61514e';

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

/// See also [librarySearchResults].
@ProviderFor(librarySearchResults)
const librarySearchResultsProvider = LibrarySearchResultsFamily();

/// See also [librarySearchResults].
class LibrarySearchResultsFamily extends Family<AsyncValue<List<LibraryGame>>> {
  /// See also [librarySearchResults].
  const LibrarySearchResultsFamily();

  /// See also [librarySearchResults].
  LibrarySearchResultsProvider call(
    String steamId64,
  ) {
    return LibrarySearchResultsProvider(
      steamId64,
    );
  }

  @override
  LibrarySearchResultsProvider getProviderOverride(
    covariant LibrarySearchResultsProvider provider,
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
  String? get name => r'librarySearchResultsProvider';
}

/// See also [librarySearchResults].
class LibrarySearchResultsProvider
    extends AutoDisposeFutureProvider<List<LibraryGame>> {
  /// See also [librarySearchResults].
  LibrarySearchResultsProvider(
    String steamId64,
  ) : this._internal(
          (ref) => librarySearchResults(
            ref as LibrarySearchResultsRef,
            steamId64,
          ),
          from: librarySearchResultsProvider,
          name: r'librarySearchResultsProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$librarySearchResultsHash,
          dependencies: LibrarySearchResultsFamily._dependencies,
          allTransitiveDependencies:
              LibrarySearchResultsFamily._allTransitiveDependencies,
          steamId64: steamId64,
        );

  LibrarySearchResultsProvider._internal(
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
    FutureOr<List<LibraryGame>> Function(LibrarySearchResultsRef provider)
        create,
  ) {
    return ProviderOverride(
      origin: this,
      override: LibrarySearchResultsProvider._internal(
        (ref) => create(ref as LibrarySearchResultsRef),
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
  AutoDisposeFutureProviderElement<List<LibraryGame>> createElement() {
    return _LibrarySearchResultsProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is LibrarySearchResultsProvider &&
        other.steamId64 == steamId64;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, steamId64.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin LibrarySearchResultsRef
    on AutoDisposeFutureProviderRef<List<LibraryGame>> {
  /// The parameter `steamId64` of this provider.
  String get steamId64;
}

class _LibrarySearchResultsProviderElement
    extends AutoDisposeFutureProviderElement<List<LibraryGame>>
    with LibrarySearchResultsRef {
  _LibrarySearchResultsProviderElement(super.provider);

  @override
  String get steamId64 => (origin as LibrarySearchResultsProvider).steamId64;
}

String _$storeSearchResultsHash() =>
    r'123856cc4bf81f498b1d5248c72d5176fc981365';

/// See also [storeSearchResults].
@ProviderFor(storeSearchResults)
final storeSearchResultsProvider =
    AutoDisposeFutureProvider<List<StoreSearchResult>>.internal(
  storeSearchResults,
  name: r'storeSearchResultsProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$storeSearchResultsHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef StoreSearchResultsRef
    = AutoDisposeFutureProviderRef<List<StoreSearchResult>>;
String _$searchQueryHash() => r'3c36752ee11b18a9f1e545eb1a7209a7222d91c9';

/// See also [SearchQuery].
@ProviderFor(SearchQuery)
final searchQueryProvider =
    AutoDisposeNotifierProvider<SearchQuery, String>.internal(
  SearchQuery.new,
  name: r'searchQueryProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$searchQueryHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$SearchQuery = AutoDisposeNotifier<String>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
