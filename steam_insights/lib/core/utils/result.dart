/// Generic success/failure union for repository/usecase return values that
/// aren't already wrapped in Riverpod's [AsyncValue] (prefer AsyncValue for
/// provider state; reserve this for plain method return types).
sealed class Result<T> {
  const Result();
}

class Success<T> extends Result<T> {
  const Success(this.data);

  final T data;
}

class Failed<T> extends Result<T> {
  const Failed(this.message);

  final String message;
}

/// Formats a playtime duration in minutes as a short human-readable label,
/// e.g. `125` -> `"2.1h"`. Used across library/dashboard/statistics.
String playtimeMinutesToHoursLabel(int minutes) {
  final hours = minutes / 60;
  return '${hours.toStringAsFixed(1)}h';
}
