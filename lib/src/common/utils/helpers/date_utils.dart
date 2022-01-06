import 'package:intl/intl.dart';

class CustomDateUtils {
  static String getDateInMMMMddyyyy({
    DateTime? dateTime,
    bool withTime = false,
  }) {
    final _dateTime = dateTime ?? DateTime.now();
    final dateFormat = withTime
        ? DateFormat('MMMM d, yyyy hh:mm a')
        : DateFormat('MMMM d, yyyy');
    return dateFormat.format(_dateTime);
  }
}
