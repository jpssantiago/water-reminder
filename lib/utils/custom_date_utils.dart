class CustomDateUtils {
  static bool isToday(DateTime date) {
    DateTime current = DateTime.now();

    return current.day == date.day &&
        current.month == date.month &&
        current.year == date.year;
  }

  static bool isYesterday(DateTime date) {
    DateTime current = DateTime.now();

    return current.day - 1 == date.day &&
        current.month == date.month &&
        current.year == date.year;
  }
}
