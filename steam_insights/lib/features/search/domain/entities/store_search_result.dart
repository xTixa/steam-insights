/// A single result from Steam Store's `storesearch` endpoint.
class StoreSearchResult {
  const StoreSearchResult({
    required this.appId,
    required this.name,
    required this.iconUrl,
  });

  final int appId;
  final String name;
  final String iconUrl;
}
