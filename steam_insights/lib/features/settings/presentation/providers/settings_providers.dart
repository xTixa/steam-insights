import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../core/database/isar_service.dart';
import '../../../library/presentation/providers/library_providers.dart';
import '../../domain/usecases/clear_cache.dart';
import '../../domain/usecases/refresh_library.dart';

part 'settings_providers.g.dart';

@riverpod
ClearCache clearCache(Ref ref) => ClearCache(ref.watch(isarProvider));

@riverpod
RefreshLibrary refreshLibrary(Ref ref) =>
    RefreshLibrary(ref.watch(libraryRepositoryProvider));
