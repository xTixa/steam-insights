// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$profileRepositoryHash() => r'3cfafbfab14d9dfeeb509e5a44e6ecbe6b67ea62';

/// See also [profileRepository].
@ProviderFor(profileRepository)
final profileRepositoryProvider =
    AutoDisposeProvider<ProfileRepository>.internal(
  profileRepository,
  name: r'profileRepositoryProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$profileRepositoryHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef ProfileRepositoryRef = AutoDisposeProviderRef<ProfileRepository>;
String _$savedProfilesHash() => r'f9926018f6c6f959074822cd61484b028acf1583';

/// See also [savedProfiles].
@ProviderFor(savedProfiles)
final savedProfilesProvider =
    AutoDisposeFutureProvider<List<SteamProfile>>.internal(
  savedProfiles,
  name: r'savedProfilesProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$savedProfilesHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef SavedProfilesRef = AutoDisposeFutureProviderRef<List<SteamProfile>>;
String _$addProfileHash() => r'd2c6e109c4f654cffef950f5e392e9ffc567f177';

/// See also [addProfile].
@ProviderFor(addProfile)
final addProfileProvider = AutoDisposeProvider<AddProfile>.internal(
  addProfile,
  name: r'addProfileProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$addProfileHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef AddProfileRef = AutoDisposeProviderRef<AddProfile>;
String _$removeProfileHash() => r'78a2a7b8a645f7b463c59631d825d5ecaae3b2c3';

/// See also [removeProfile].
@ProviderFor(removeProfile)
final removeProfileProvider = AutoDisposeProvider<RemoveProfile>.internal(
  removeProfile,
  name: r'removeProfileProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$removeProfileHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef RemoveProfileRef = AutoDisposeProviderRef<RemoveProfile>;
String _$setFavoriteProfileHash() =>
    r'fd779179a928841e29c9c95d54b9d4a0f503d485';

/// See also [setFavoriteProfile].
@ProviderFor(setFavoriteProfile)
final setFavoriteProfileProvider =
    AutoDisposeProvider<SetFavoriteProfile>.internal(
  setFavoriteProfile,
  name: r'setFavoriteProfileProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$setFavoriteProfileHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef SetFavoriteProfileRef = AutoDisposeProviderRef<SetFavoriteProfile>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
