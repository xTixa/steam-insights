import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'active_profile_provider.g.dart';

/// The `steamId64` of the currently selected profile for this session.
/// Read by nearly every feature's providers to scope queries. Lives in core
/// because it's consumed across dashboard/library/statistics/wishlist/
/// settings — the profile feature owns *persistence* of the saved/favorite
/// profile list, core owns *which one is active right now*.
@riverpod
class ActiveProfileController extends _$ActiveProfileController {
  @override
  String? build() => null;

  void setActiveProfile(String steamId64) => state = steamId64;

  void clear() => state = null;
}
