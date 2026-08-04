// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'library_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$libraryRepositoryHash() => r'8c2426fd156bfb7dddebc9efc704a5277d507829';

/// See also [libraryRepository].
@ProviderFor(libraryRepository)
final libraryRepositoryProvider =
    AutoDisposeProvider<LibraryRepository>.internal(
  libraryRepository,
  name: r'libraryRepositoryProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$libraryRepositoryHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef LibraryRepositoryRef = AutoDisposeProviderRef<LibraryRepository>;
String _$getLibraryHash() => r'09dc2f736ccb42b14e2b51ea6bb91d493315e05d';

/// See also [getLibrary].
@ProviderFor(getLibrary)
final getLibraryProvider = AutoDisposeProvider<GetLibrary>.internal(
  getLibrary,
  name: r'getLibraryProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$getLibraryHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef GetLibraryRef = AutoDisposeProviderRef<GetLibrary>;
String _$refreshLibraryHash() => r'fbaeb0a8914674c8c3676411de4460e62c93ce5a';

/// See also [refreshLibrary].
@ProviderFor(refreshLibrary)
final refreshLibraryProvider = AutoDisposeProvider<RefreshLibrary>.internal(
  refreshLibrary,
  name: r'refreshLibraryProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$refreshLibraryHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef RefreshLibraryRef = AutoDisposeProviderRef<RefreshLibrary>;
String _$toggleFavoriteGameHash() =>
    r'bcb607fdae4fa7f22e4bb43cca80c0acaab0f113';

/// See also [toggleFavoriteGame].
@ProviderFor(toggleFavoriteGame)
final toggleFavoriteGameProvider =
    AutoDisposeProvider<ToggleFavoriteGame>.internal(
  toggleFavoriteGame,
  name: r'toggleFavoriteGameProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$toggleFavoriteGameHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef ToggleFavoriteGameRef = AutoDisposeProviderRef<ToggleFavoriteGame>;
String _$searchLibraryGamesHash() =>
    r'7c22c2a84b19edc653a2040e4fa0d1b9574da8fe';

/// See also [searchLibraryGames].
@ProviderFor(searchLibraryGames)
final searchLibraryGamesProvider =
    AutoDisposeProvider<SearchLibraryGames>.internal(
  searchLibraryGames,
  name: r'searchLibraryGamesProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$searchLibraryGamesHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef SearchLibraryGamesRef = AutoDisposeProviderRef<SearchLibraryGames>;
String _$filteredLibraryHash() => r'0c2a5665182ff12ec0a8980559dbfa475e8e30c1';

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

/// See also [filteredLibrary].
@ProviderFor(filteredLibrary)
const filteredLibraryProvider = FilteredLibraryFamily();

/// See also [filteredLibrary].
class FilteredLibraryFamily extends Family<AsyncValue<List<LibraryGame>>> {
  /// See also [filteredLibrary].
  const FilteredLibraryFamily();

  /// See also [filteredLibrary].
  FilteredLibraryProvider call(
    String steamId64,
  ) {
    return FilteredLibraryProvider(
      steamId64,
    );
  }

  @override
  FilteredLibraryProvider getProviderOverride(
    covariant FilteredLibraryProvider provider,
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
  String? get name => r'filteredLibraryProvider';
}

/// See also [filteredLibrary].
class FilteredLibraryProvider
    extends AutoDisposeFutureProvider<List<LibraryGame>> {
  /// See also [filteredLibrary].
  FilteredLibraryProvider(
    String steamId64,
  ) : this._internal(
          (ref) => filteredLibrary(
            ref as FilteredLibraryRef,
            steamId64,
          ),
          from: filteredLibraryProvider,
          name: r'filteredLibraryProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$filteredLibraryHash,
          dependencies: FilteredLibraryFamily._dependencies,
          allTransitiveDependencies:
              FilteredLibraryFamily._allTransitiveDependencies,
          steamId64: steamId64,
        );

  FilteredLibraryProvider._internal(
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
    FutureOr<List<LibraryGame>> Function(FilteredLibraryRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: FilteredLibraryProvider._internal(
        (ref) => create(ref as FilteredLibraryRef),
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
    return _FilteredLibraryProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is FilteredLibraryProvider && other.steamId64 == steamId64;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, steamId64.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin FilteredLibraryRef on AutoDisposeFutureProviderRef<List<LibraryGame>> {
  /// The parameter `steamId64` of this provider.
  String get steamId64;
}

class _FilteredLibraryProviderElement
    extends AutoDisposeFutureProviderElement<List<LibraryGame>>
    with FilteredLibraryRef {
  _FilteredLibraryProviderElement(super.provider);

  @override
  String get steamId64 => (origin as FilteredLibraryProvider).steamId64;
}

String _$libraryFilterControllerHash() =>
    r'9cdd55749df9984c36cc75e0004045bc20b6debf';

/// See also [LibraryFilterController].
@ProviderFor(LibraryFilterController)
final libraryFilterControllerProvider = AutoDisposeNotifierProvider<
    LibraryFilterController, LibraryFilter>.internal(
  LibraryFilterController.new,
  name: r'libraryFilterControllerProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$libraryFilterControllerHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$LibraryFilterController = AutoDisposeNotifier<LibraryFilter>;
String _$librarySearchQueryHash() =>
    r'51948c87fb475b41861f661f57fbc65e6ac8f5ee';

/// See also [LibrarySearchQuery].
@ProviderFor(LibrarySearchQuery)
final librarySearchQueryProvider =
    AutoDisposeNotifierProvider<LibrarySearchQuery, String>.internal(
  LibrarySearchQuery.new,
  name: r'librarySearchQueryProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$librarySearchQueryHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$LibrarySearchQuery = AutoDisposeNotifier<String>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
