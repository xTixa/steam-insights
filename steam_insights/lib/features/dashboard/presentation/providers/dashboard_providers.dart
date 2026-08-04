import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../library/presentation/providers/library_providers.dart';
import '../../domain/entities/account_summary.dart';
import '../../domain/usecases/get_account_summary.dart';

part 'dashboard_providers.g.dart';

@riverpod
GetAccountSummary getAccountSummary(Ref ref) {
  return GetAccountSummary(ref.watch(libraryRepositoryProvider));
}

@riverpod
Future<AccountSummary> accountSummary(Ref ref, String steamId64) {
  return ref.watch(getAccountSummaryProvider).call(steamId64);
}
