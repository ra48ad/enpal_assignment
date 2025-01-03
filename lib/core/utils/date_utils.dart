import 'package:intl/intl.dart';

/// Returns the time in the format hh:mm
String formatTime(DateTime date) {
  return DateFormat('hh:mm').format(date);
}

/// Returns the date in the format dd.MM.yyyy
String formatDate(DateTime date) {
  return DateFormat('dd.MM.yyyy').format(date);
}

// Returns the date in the format dd.MM. hh:mm if current year, else dd.MM.yyyy hh:mm
String formatDateTime(DateTime date) {
  final now = DateTime.now();
  final isCurrentYear = now.year == date.year;
  final dateFormat = isCurrentYear ? 'dd.MM. hh:mm' : 'dd.MM.yy hh:mm';
  return DateFormat(dateFormat).format(date);
}
