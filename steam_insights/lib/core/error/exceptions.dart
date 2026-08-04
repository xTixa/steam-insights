/// Low-level throwables raised by datasources. Repositories catch these and
/// translate them into [Failure]s (see core/network/network_exceptions.dart)
/// before handing results to usecases/presentation.
class ServerException implements Exception {
  const ServerException([this.message = 'Server error']);

  final String message;

  @override
  String toString() => 'ServerException: $message';
}

class CacheException implements Exception {
  const CacheException([this.message = 'Cache error']);

  final String message;

  @override
  String toString() => 'CacheException: $message';
}

class NotFoundException implements Exception {
  const NotFoundException([this.message = 'Not found']);

  final String message;

  @override
  String toString() => 'NotFoundException: $message';
}
