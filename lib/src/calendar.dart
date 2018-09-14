class DateHelper {
  static String getDayString(DateTime date) {
    var y = _twoDigits(date.year);
    var m = _twoDigits(date.month);
    var d = _twoDigits(date.day);
    return "$y-$m-$d";
  }

  static bool isSameDay(DateTime date1, DateTime date2) {
    date1 ??= DateTime.now();
    date2 ??= DateTime.now();
    return date1.year == date2.year &&
        date1.month == date2.month &&
        date1.day == date2.day;
  }

  static bool isToday(DateTime date) {
    return isSameDay(DateTime.now(), date);
  }

  static bool isAm(DateTime date) {
    return date.hour >= 0 && date.hour < 12;
  }

  static bool isPm(DateTime date) {
    return !isAm(date);
  }

  static DateTime getStartTimeOfDay(DateTime date) {
    return DateTime(date.year, date.month, date.day, 0, 0, 0, 0, 0);
  }

  static String _twoDigits(int n) {
    if (n >= 10) return "${n}";
    return "0${n}";
  }
}
