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

  static String getGreeting() {
    int hour = DateTime.now().hour;

    if (hour <= 11) {
      return 'good_morning';
    } else if (hour >= 12 && hour <= 18) {
      return 'good_afternoon';
    } else {
      return 'good_evening';
    }
  }
}
