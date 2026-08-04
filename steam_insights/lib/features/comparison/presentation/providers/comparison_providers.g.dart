// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'comparison_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$comparisonResultHash() => r'19a174f066e39595fd16bbac980548bd3ec06c4e';

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

/// See also [comparisonResult].
@ProviderFor(comparisonResult)
const comparisonResultProvider = ComparisonResultFamily();

/// See also [comparisonResult].
class ComparisonResultFamily extends Family<AsyncValue<ComparisonResult>> {
  /// See also [comparisonResult].
  const ComparisonResultFamily();

  /// See also [comparisonResult].
  ComparisonResultProvider call(
    String steamIdA,
    String steamIdB,
  ) {
    return ComparisonResultProvider(
      steamIdA,
      steamIdB,
    );
  }

  @override
  ComparisonResultProvider getProviderOverride(
    covariant ComparisonResultProvider provider,
  ) {
    return call(
      provider.steamIdA,
      provider.steamIdB,
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
  String? get name => r'comparisonResultProvider';
}

/// See also [comparisonResult].
class ComparisonResultProvider
    extends AutoDisposeFutureProvider<ComparisonResult> {
  /// See also [comparisonResult].
  ComparisonResultProvider(
    String steamIdA,
    String steamIdB,
  ) : this._internal(
          (ref) => comparisonResult(
            ref as ComparisonResultRef,
            steamIdA,
            steamIdB,
          ),
          from: comparisonResultProvider,
          name: r'comparisonResultProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$comparisonResultHash,
          dependencies: ComparisonResultFamily._dependencies,
          allTransitiveDependencies:
              ComparisonResultFamily._allTransitiveDependencies,
          steamIdA: steamIdA,
          steamIdB: steamIdB,
        );

  ComparisonResultProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.steamIdA,
    required this.steamIdB,
  }) : super.internal();

  final String steamIdA;
  final String steamIdB;

  @override
  Override overrideWith(
    FutureOr<ComparisonResult> Function(ComparisonResultRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: ComparisonResultProvider._internal(
        (ref) => create(ref as ComparisonResultRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        steamIdA: steamIdA,
        steamIdB: steamIdB,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<ComparisonResult> createElement() {
    return _ComparisonResultProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is ComparisonResultProvider &&
        other.steamIdA == steamIdA &&
        other.steamIdB == steamIdB;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, steamIdA.hashCode);
    hash = _SystemHash.combine(hash, steamIdB.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin ComparisonResultRef on AutoDisposeFutureProviderRef<ComparisonResult> {
  /// The parameter `steamIdA` of this provider.
  String get steamIdA;

  /// The parameter `steamIdB` of this provider.
  String get steamIdB;
}

class _ComparisonResultProviderElement
    extends AutoDisposeFutureProviderElement<ComparisonResult>
    with ComparisonResultRef {
  _ComparisonResultProviderElement(super.provider);

  @override
  String get steamIdA => (origin as ComparisonResultProvider).steamIdA;
  @override
  String get steamIdB => (origin as ComparisonResultProvider).steamIdB;
}

String _$comparisonControllerHash() =>
    r'a4c5d3bca7b4387cf25cc05352681229b29ee2c0';

/// Holds the selected second profile's steamId64 for comparison.
///
/// Copied from [ComparisonController].
@ProviderFor(ComparisonController)
final comparisonControllerProvider =
    AutoDisposeNotifierProvider<ComparisonController, String?>.internal(
  ComparisonController.new,
  name: r'comparisonControllerProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$comparisonControllerHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$ComparisonController = AutoDisposeNotifier<String?>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
