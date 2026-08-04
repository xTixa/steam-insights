import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../api/steam_store_api_client.dart';
import '../api/steam_web_api_client.dart';
import '../network/dio_client.dart';

part 'steam_api_providers.g.dart';

@riverpod
SteamWebApiClient steamWebApiClient(Ref ref) {
  return SteamWebApiClient(ref.watch(dioProvider));
}

@riverpod
SteamStoreApiClient steamStoreApiClient(Ref ref) {
  return SteamStoreApiClient(ref.watch(dioProvider));
}
