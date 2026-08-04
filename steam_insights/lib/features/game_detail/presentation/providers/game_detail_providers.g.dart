// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'game_detail_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$gameDetailRepositoryHash() =>
    r'c6cde39be53225fa1a6f241bd80af35a55b48af1';

/// See also [gameDetailRepository].
@ProviderFor(gameDetailRepository)
final gameDetailRepositoryProvider =
    AutoDisposeProvider<GameDetailRepository>.internal(
  gameDetailRepository,
  name: r'gameDetailRepositoryProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$gameDetailRepositoryHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef GameDetailRepositoryRef = AutoDisposeProviderRef<GameDetailRepository>;
String _$gameDetailsHash() => r'de9970daeb4a461c03615e9ebc2508c5fa727254';

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

/// See also [gameDetails].
@ProviderFor(gameDetails)
const gameDetailsProvider = GameDetailsFamily();

/// See also [gameDetails].
class GameDetailsFamily extends Family<AsyncValue<GameDetails>> {
  /// See also [gameDetails].
  const GameDetailsFamily();

  /// See also [gameDetails].
  GameDetailsProvider call(
    int appId,
    String ownerSteamId64,
  ) {
    return GameDetailsProvider(
      appId,
      ownerSteamId64,
    );
  }

  @override
  GameDetailsProvider getProviderOverride(
    covariant GameDetailsProvider provider,
  ) {
    return call(
      provider.appId,
      provider.ownerSteamId64,
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
  String? get name => r'gameDetailsProvider';
}

/// See also [gameDetails].
class GameDetailsProvider extends AutoDisposeFutureProvider<GameDetails> {
  /// See also [gameDetails].
  GameDetailsProvider(
    int appId,
    String ownerSteamId64,
  ) : this._internal(
          (ref) => gameDetails(
            ref as GameDetailsRef,
            appId,
            ownerSteamId64,
          ),
          from: gameDetailsProvider,
          name: r'gameDetailsProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$gameDetailsHash,
          dependencies: GameDetailsFamily._dependencies,
          allTransitiveDependencies:
              GameDetailsFamily._allTransitiveDependencies,
          appId: appId,
          ownerSteamId64: ownerSteamId64,
        );

  GameDetailsProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.appId,
    required this.ownerSteamId64,
  }) : super.internal();

  final int appId;
  final String ownerSteamId64;

  @override
  Override overrideWith(
    FutureOr<GameDetails> Function(GameDetailsRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: GameDetailsProvider._internal(
        (ref) => create(ref as GameDetailsRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        appId: appId,
        ownerSteamId64: ownerSteamId64,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<GameDetails> createElement() {
    return _GameDetailsProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is GameDetailsProvider &&
        other.appId == appId &&
        other.ownerSteamId64 == ownerSteamId64;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, appId.hashCode);
    hash = _SystemHash.combine(hash, ownerSteamId64.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin GameDetailsRef on AutoDisposeFutureProviderRef<GameDetails> {
  /// The parameter `appId` of this provider.
  int get appId;

  /// The parameter `ownerSteamId64` of this provider.
  String get ownerSteamId64;
}

class _GameDetailsProviderElement
    extends AutoDisposeFutureProviderElement<GameDetails> with GameDetailsRef {
  _GameDetailsProviderElement(super.provider);

  @override
  int get appId => (origin as GameDetailsProvider).appId;
  @override
  String get ownerSteamId64 => (origin as GameDetailsProvider).ownerSteamId64;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
