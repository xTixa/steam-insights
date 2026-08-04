// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dashboard_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$getAccountSummaryHash() => r'48b60e6e8565a0857aba5fae1a120dd28d200b07';

/// See also [getAccountSummary].
@ProviderFor(getAccountSummary)
final getAccountSummaryProvider =
    AutoDisposeProvider<GetAccountSummary>.internal(
  getAccountSummary,
  name: r'getAccountSummaryProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$getAccountSummaryHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef GetAccountSummaryRef = AutoDisposeProviderRef<GetAccountSummary>;
String _$accountSummaryHash() => r'b12bcd93fa8a770593fc5b3e0a0a0faa014db0eb';

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

/// See also [accountSummary].
@ProviderFor(accountSummary)
const accountSummaryProvider = AccountSummaryFamily();

/// See also [accountSummary].
class AccountSummaryFamily extends Family<AsyncValue<AccountSummary>> {
  /// See also [accountSummary].
  const AccountSummaryFamily();

  /// See also [accountSummary].
  AccountSummaryProvider call(
    String steamId64,
  ) {
    return AccountSummaryProvider(
      steamId64,
    );
  }

  @override
  AccountSummaryProvider getProviderOverride(
    covariant AccountSummaryProvider provider,
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
  String? get name => r'accountSummaryProvider';
}

/// See also [accountSummary].
class AccountSummaryProvider extends AutoDisposeFutureProvider<AccountSummary> {
  /// See also [accountSummary].
  AccountSummaryProvider(
    String steamId64,
  ) : this._internal(
          (ref) => accountSummary(
            ref as AccountSummaryRef,
            steamId64,
          ),
          from: accountSummaryProvider,
          name: r'accountSummaryProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$accountSummaryHash,
          dependencies: AccountSummaryFamily._dependencies,
          allTransitiveDependencies:
              AccountSummaryFamily._allTransitiveDependencies,
          steamId64: steamId64,
        );

  AccountSummaryProvider._internal(
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
    FutureOr<AccountSummary> Function(AccountSummaryRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: AccountSummaryProvider._internal(
        (ref) => create(ref as AccountSummaryRef),
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
  AutoDisposeFutureProviderElement<AccountSummary> createElement() {
    return _AccountSummaryProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is AccountSummaryProvider && other.steamId64 == steamId64;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, steamId64.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin AccountSummaryRef on AutoDisposeFutureProviderRef<AccountSummary> {
  /// The parameter `steamId64` of this provider.
  String get steamId64;
}

class _AccountSummaryProviderElement
    extends AutoDisposeFutureProviderElement<AccountSummary>
    with AccountSummaryRef {
  _AccountSummaryProviderElement(super.provider);

  @override
  String get steamId64 => (origin as AccountSummaryProvider).steamId64;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
