class Date {
  int day;
  int month;
  int year;

  Date({
    this.day,
    this.month,
    this.year,
  });

  static Date fromDateTime(DateTime date) {
    return Date(
      day: date.day,
      month: date.day,
      year: date.year,
    );
  }
}
