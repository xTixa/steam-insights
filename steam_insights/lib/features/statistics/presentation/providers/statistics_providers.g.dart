// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'statistics_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$topPlayedGamesHash() => r'9f16d6303d7f605216e6a70aa880f0dafe426cbd';

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

/// See also [topPlayedGames].
@ProviderFor(topPlayedGames)
const topPlayedGamesProvider = TopPlayedGamesFamily();

/// See also [topPlayedGames].
class TopPlayedGamesFamily extends Family<AsyncValue<List<LibraryGame>>> {
  /// See also [topPlayedGames].
  const TopPlayedGamesFamily();

  /// See also [topPlayedGames].
  TopPlayedGamesProvider call(
    String steamId64,
  ) {
    return TopPlayedGamesProvider(
      steamId64,
    );
  }

  @override
  TopPlayedGamesProvider getProviderOverride(
    covariant TopPlayedGamesProvider provider,
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
  String? get name => r'topPlayedGamesProvider';
}

/// See also [topPlayedGames].
class TopPlayedGamesProvider
    extends AutoDisposeFutureProvider<List<LibraryGame>> {
  /// See also [topPlayedGames].
  TopPlayedGamesProvider(
    String steamId64,
  ) : this._internal(
          (ref) => topPlayedGames(
            ref as TopPlayedGamesRef,
            steamId64,
          ),
          from: topPlayedGamesProvider,
          name: r'topPlayedGamesProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$topPlayedGamesHash,
          dependencies: TopPlayedGamesFamily._dependencies,
          allTransitiveDependencies:
              TopPlayedGamesFamily._allTransitiveDependencies,
          steamId64: steamId64,
        );

  TopPlayedGamesProvider._internal(
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
    FutureOr<List<LibraryGame>> Function(TopPlayedGamesRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: TopPlayedGamesProvider._internal(
        (ref) => create(ref as TopPlayedGamesRef),
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
    return _TopPlayedGamesProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is TopPlayedGamesProvider && other.steamId64 == steamId64;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, steamId64.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin TopPlayedGamesRef on AutoDisposeFutureProviderRef<List<LibraryGame>> {
  /// The parameter `steamId64` of this provider.
  String get steamId64;
}

class _TopPlayedGamesProviderElement
    extends AutoDisposeFutureProviderElement<List<LibraryGame>>
    with TopPlayedGamesRef {
  _TopPlayedGamesProviderElement(super.provider);

  @override
  String get steamId64 => (origin as TopPlayedGamesProvider).steamId64;
}

String _$genreDistributionHash() => r'8730f76d17a143b86c8e1de31c338af3ce939797';

/// See also [genreDistribution].
@ProviderFor(genreDistribution)
const genreDistributionProvider = GenreDistributionFamily();

/// See also [genreDistribution].
class GenreDistributionFamily
    extends Family<AsyncValue<List<GenrePlaytimeSlice>>> {
  /// See also [genreDistribution].
  const GenreDistributionFamily();

  /// See also [genreDistribution].
  GenreDistributionProvider call(
    String steamId64,
  ) {
    return GenreDistributionProvider(
      steamId64,
    );
  }

  @override
  GenreDistributionProvider getProviderOverride(
    covariant GenreDistributionProvider provider,
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
  String? get name => r'genreDistributionProvider';
}

/// See also [genreDistribution].
class GenreDistributionProvider
    extends AutoDisposeFutureProvider<List<GenrePlaytimeSlice>> {
  /// See also [genreDistribution].
  GenreDistributionProvider(
    String steamId64,
  ) : this._internal(
          (ref) => genreDistribution(
            ref as GenreDistributionRef,
            steamId64,
          ),
          from: genreDistributionProvider,
          name: r'genreDistributionProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$genreDistributionHash,
          dependencies: GenreDistributionFamily._dependencies,
          allTransitiveDependencies:
              GenreDistributionFamily._allTransitiveDependencies,
          steamId64: steamId64,
        );

  GenreDistributionProvider._internal(
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
    FutureOr<List<GenrePlaytimeSlice>> Function(GenreDistributionRef provider)
        create,
  ) {
    return ProviderOverride(
      origin: this,
      override: GenreDistributionProvider._internal(
        (ref) => create(ref as GenreDistributionRef),
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
  AutoDisposeFutureProviderElement<List<GenrePlaytimeSlice>> createElement() {
    return _GenreDistributionProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is GenreDistributionProvider && other.steamId64 == steamId64;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, steamId64.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin GenreDistributionRef
    on AutoDisposeFutureProviderRef<List<GenrePlaytimeSlice>> {
  /// The parameter `steamId64` of this provider.
  String get steamId64;
}

class _GenreDistributionProviderElement
    extends AutoDisposeFutureProviderElement<List<GenrePlaytimeSlice>>
    with GenreDistributionRef {
  _GenreDistributionProviderElement(super.provider);

  @override
  String get steamId64 => (origin as GenreDistributionProvider).steamId64;
}

String _$libraryGrowthHash() => r'd57c1b7fbcf4393db66152f0881d12d560a7dccf';

/// See also [libraryGrowth].
@ProviderFor(libraryGrowth)
const libraryGrowthProvider = LibraryGrowthFamily();

/// See also [libraryGrowth].
class LibraryGrowthFamily extends Family<AsyncValue<List<LibraryGrowthPoint>>> {
  /// See also [libraryGrowth].
  const LibraryGrowthFamily();

  /// See also [libraryGrowth].
  LibraryGrowthProvider call(
    String steamId64,
  ) {
    return LibraryGrowthProvider(
      steamId64,
    );
  }

  @override
  LibraryGrowthProvider getProviderOverride(
    covariant LibraryGrowthProvider provider,
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
  String? get name => r'libraryGrowthProvider';
}

/// See also [libraryGrowth].
class LibraryGrowthProvider
    extends AutoDisposeFutureProvider<List<LibraryGrowthPoint>> {
  /// See also [libraryGrowth].
  LibraryGrowthProvider(
    String steamId64,
  ) : this._internal(
          (ref) => libraryGrowth(
            ref as LibraryGrowthRef,
            steamId64,
          ),
          from: libraryGrowthProvider,
          name: r'libraryGrowthProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$libraryGrowthHash,
          dependencies: LibraryGrowthFamily._dependencies,
          allTransitiveDependencies:
              LibraryGrowthFamily._allTransitiveDependencies,
          steamId64: steamId64,
        );

  LibraryGrowthProvider._internal(
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
    FutureOr<List<LibraryGrowthPoint>> Function(LibraryGrowthRef provider)
        create,
  ) {
    return ProviderOverride(
      origin: this,
      override: LibraryGrowthProvider._internal(
        (ref) => create(ref as LibraryGrowthRef),
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
  AutoDisposeFutureProviderElement<List<LibraryGrowthPoint>> createElement() {
    return _LibraryGrowthProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is LibraryGrowthProvider && other.steamId64 == steamId64;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, steamId64.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin LibraryGrowthRef
    on AutoDisposeFutureProviderRef<List<LibraryGrowthPoint>> {
  /// The parameter `steamId64` of this provider.
  String get steamId64;
}

class _LibraryGrowthProviderElement
    extends AutoDisposeFutureProviderElement<List<LibraryGrowthPoint>>
    with LibraryGrowthRef {
  _LibraryGrowthProviderElement(super.provider);

  @override
  String get steamId64 => (origin as LibraryGrowthProvider).steamId64;
}

String _$completionStatsHash() => r'ea639e7c7d0fbfdfa106d93290653c180aa2cf55';

/// See also [completionStats].
@ProviderFor(completionStats)
const completionStatsProvider = CompletionStatsFamily();

/// See also [completionStats].
class CompletionStatsFamily extends Family<AsyncValue<CompletionStats>> {
  /// See also [completionStats].
  const CompletionStatsFamily();

  /// See also [completionStats].
  CompletionStatsProvider call(
    String steamId64,
  ) {
    return CompletionStatsProvider(
      steamId64,
    );
  }

  @override
  CompletionStatsProvider getProviderOverride(
    covariant CompletionStatsProvider provider,
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
  String? get name => r'completionStatsProvider';
}

/// See also [completionStats].
class CompletionStatsProvider
    extends AutoDisposeFutureProvider<CompletionStats> {
  /// See also [completionStats].
  CompletionStatsProvider(
    String steamId64,
  ) : this._internal(
          (ref) => completionStats(
            ref as CompletionStatsRef,
            steamId64,
          ),
          from: completionStatsProvider,
          name: r'completionStatsProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$completionStatsHash,
          dependencies: CompletionStatsFamily._dependencies,
          allTransitiveDependencies:
              CompletionStatsFamily._allTransitiveDependencies,
          steamId64: steamId64,
        );

  CompletionStatsProvider._internal(
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
    FutureOr<CompletionStats> Function(CompletionStatsRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: CompletionStatsProvider._internal(
        (ref) => create(ref as CompletionStatsRef),
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
  AutoDisposeFutureProviderElement<CompletionStats> createElement() {
    return _CompletionStatsProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is CompletionStatsProvider && other.steamId64 == steamId64;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, steamId64.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin CompletionStatsRef on AutoDisposeFutureProviderRef<CompletionStats> {
  /// The parameter `steamId64` of this provider.
  String get steamId64;
}

class _CompletionStatsProviderElement
    extends AutoDisposeFutureProviderElement<CompletionStats>
    with CompletionStatsRef {
  _CompletionStatsProviderElement(super.provider);

  @override
  String get steamId64 => (origin as CompletionStatsProvider).steamId64;
}

String _$recentWeeksPlaytimeHash() =>
    r'416e57dd42a16ce10f6b6173323163c91af11cba';

/// See also [recentWeeksPlaytime].
@ProviderFor(recentWeeksPlaytime)
const recentWeeksPlaytimeProvider = RecentWeeksPlaytimeFamily();

/// See also [recentWeeksPlaytime].
class RecentWeeksPlaytimeFamily extends Family<AsyncValue<int>> {
  /// See also [recentWeeksPlaytime].
  const RecentWeeksPlaytimeFamily();

  /// See also [recentWeeksPlaytime].
  RecentWeeksPlaytimeProvider call(
    String steamId64,
  ) {
    return RecentWeeksPlaytimeProvider(
      steamId64,
    );
  }

  @override
  RecentWeeksPlaytimeProvider getProviderOverride(
    covariant RecentWeeksPlaytimeProvider provider,
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
  String? get name => r'recentWeeksPlaytimeProvider';
}

/// See also [recentWeeksPlaytime].
class RecentWeeksPlaytimeProvider extends AutoDisposeFutureProvider<int> {
  /// See also [recentWeeksPlaytime].
  RecentWeeksPlaytimeProvider(
    String steamId64,
  ) : this._internal(
          (ref) => recentWeeksPlaytime(
            ref as RecentWeeksPlaytimeRef,
            steamId64,
          ),
          from: recentWeeksPlaytimeProvider,
          name: r'recentWeeksPlaytimeProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$recentWeeksPlaytimeHash,
          dependencies: RecentWeeksPlaytimeFamily._dependencies,
          allTransitiveDependencies:
              RecentWeeksPlaytimeFamily._allTransitiveDependencies,
          steamId64: steamId64,
        );

  RecentWeeksPlaytimeProvider._internal(
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
    FutureOr<int> Function(RecentWeeksPlaytimeRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: RecentWeeksPlaytimeProvider._internal(
        (ref) => create(ref as RecentWeeksPlaytimeRef),
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
  AutoDisposeFutureProviderElement<int> createElement() {
    return _RecentWeeksPlaytimeProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is RecentWeeksPlaytimeProvider && other.steamId64 == steamId64;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, steamId64.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin RecentWeeksPlaytimeRef on AutoDisposeFutureProviderRef<int> {
  /// The parameter `steamId64` of this provider.
  String get steamId64;
}

class _RecentWeeksPlaytimeProviderElement
    extends AutoDisposeFutureProviderElement<int> with RecentWeeksPlaytimeRef {
  _RecentWeeksPlaytimeProviderElement(super.provider);

  @override
  String get steamId64 => (origin as RecentWeeksPlaytimeProvider).steamId64;
}

String _$singleplayerMultiplayerSplitHash() =>
    r'38eba6d0ac8cf447046c18eebeefd9eaf30d78b3';

/// See also [singleplayerMultiplayerSplit].
@ProviderFor(singleplayerMultiplayerSplit)
const singleplayerMultiplayerSplitProvider =
    SingleplayerMultiplayerSplitFamily();

/// See also [singleplayerMultiplayerSplit].
class SingleplayerMultiplayerSplitFamily
    extends Family<AsyncValue<SingleplayerMultiplayerSplit>> {
  /// See also [singleplayerMultiplayerSplit].
  const SingleplayerMultiplayerSplitFamily();

  /// See also [singleplayerMultiplayerSplit].
  SingleplayerMultiplayerSplitProvider call(
    String steamId64,
  ) {
    return SingleplayerMultiplayerSplitProvider(
      steamId64,
    );
  }

  @override
  SingleplayerMultiplayerSplitProvider getProviderOverride(
    covariant SingleplayerMultiplayerSplitProvider provider,
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
  String? get name => r'singleplayerMultiplayerSplitProvider';
}

/// See also [singleplayerMultiplayerSplit].
class SingleplayerMultiplayerSplitProvider
    extends AutoDisposeFutureProvider<SingleplayerMultiplayerSplit> {
  /// See also [singleplayerMultiplayerSplit].
  SingleplayerMultiplayerSplitProvider(
    String steamId64,
  ) : this._internal(
          (ref) => singleplayerMultiplayerSplit(
            ref as SingleplayerMultiplayerSplitRef,
            steamId64,
          ),
          from: singleplayerMultiplayerSplitProvider,
          name: r'singleplayerMultiplayerSplitProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$singleplayerMultiplayerSplitHash,
          dependencies: SingleplayerMultiplayerSplitFamily._dependencies,
          allTransitiveDependencies:
              SingleplayerMultiplayerSplitFamily._allTransitiveDependencies,
          steamId64: steamId64,
        );

  SingleplayerMultiplayerSplitProvider._internal(
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
    FutureOr<SingleplayerMultiplayerSplit> Function(
            SingleplayerMultiplayerSplitRef provider)
        create,
  ) {
    return ProviderOverride(
      origin: this,
      override: SingleplayerMultiplayerSplitProvider._internal(
        (ref) => create(ref as SingleplayerMultiplayerSplitRef),
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
  AutoDisposeFutureProviderElement<SingleplayerMultiplayerSplit>
      createElement() {
    return _SingleplayerMultiplayerSplitProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is SingleplayerMultiplayerSplitProvider &&
        other.steamId64 == steamId64;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, steamId64.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin SingleplayerMultiplayerSplitRef
    on AutoDisposeFutureProviderRef<SingleplayerMultiplayerSplit> {
  /// The parameter `steamId64` of this provider.
  String get steamId64;
}

class _SingleplayerMultiplayerSplitProviderElement
    extends AutoDisposeFutureProviderElement<SingleplayerMultiplayerSplit>
    with SingleplayerMultiplayerSplitRef {
  _SingleplayerMultiplayerSplitProviderElement(super.provider);

  @override
  String get steamId64 =>
      (origin as SingleplayerMultiplayerSplitProvider).steamId64;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
