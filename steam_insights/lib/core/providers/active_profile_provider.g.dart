// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'active_profile_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$activeProfileControllerHash() =>
    r'acfe3861dccf9e9273b28f1584781852f5961693';

/// The `steamId64` of the currently selected profile for this session.
/// Read by nearly every feature's providers to scope queries. Lives in core
/// because it's consumed across dashboard/library/statistics/wishlist/
/// settings — the profile feature owns *persistence* of the saved/favorite
/// profile list, core owns *which one is active right now*.
///
/// Copied from [ActiveProfileController].
@ProviderFor(ActiveProfileController)
final activeProfileControllerProvider =
    AutoDisposeNotifierProvider<ActiveProfileController, String?>.internal(
  ActiveProfileController.new,
  name: r'activeProfileControllerProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$activeProfileControllerHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$ActiveProfileController = AutoDisposeNotifier<String?>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
