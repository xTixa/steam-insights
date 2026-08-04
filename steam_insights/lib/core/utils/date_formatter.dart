import 'package:intl/intl.dart';

/// Shared date/number formatting helpers used across library, dashboard,
/// wishlist and statistics screens.
class DateFormatter {
  DateFormatter._();

  static final _lastPlayedFormat = DateFormat.yMMMd();
  static final _dateAddedFormat = DateFormat.yMMMd();

  static String lastPlayed(DateTime? date) {
    if (date == null) return 'Never played';
    return _lastPlayedFormat.format(date);
  }

  static String dateAdded(DateTime date) => _dateAddedFormat.format(date);
}
