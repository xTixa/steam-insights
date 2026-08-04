// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'theme_mode_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$themeModeControllerHash() =>
    r'f2fb4d7810a6722e07e1d3db8bb025435bd4f8d0';

/// Current app [ThemeMode]. In-memory only for this delivery — persistence
/// (e.g. via Isar or shared_preferences) is a follow-up for the Settings
/// "change theme" feature (see features/settings).
///
/// Copied from [ThemeModeController].
@ProviderFor(ThemeModeController)
final themeModeControllerProvider =
    AutoDisposeNotifierProvider<ThemeModeController, ThemeMode>.internal(
  ThemeModeController.new,
  name: r'themeModeControllerProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$themeModeControllerHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$ThemeModeController = AutoDisposeNotifier<ThemeMode>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
