import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../library/presentation/providers/library_providers.dart';
import '../../../profile/presentation/providers/profile_providers.dart';
import '../../domain/entities/comparison_result.dart';
import '../../domain/usecases/compare_profiles.dart';

part 'comparison_providers.g.dart';

/// Holds the selected second profile's steamId64 for comparison.
@riverpod
class ComparisonController extends _$ComparisonController {
  @override
  String? build() => null;

  void selectProfile(String steamId64) => state = steamId64;
}

@riverpod
Future<ComparisonResult> comparisonResult(
  Ref ref,
  String steamIdA,
  String steamIdB,
) {
  final usecase = CompareProfiles(
    ref.watch(libraryRepositoryProvider),
    ref.watch(profileRepositoryProvider),
  );
  return usecase.call(steamIdA, steamIdB);
}
