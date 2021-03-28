import 'drink.dart';

class User {
  String name;
  double drinkGoal;
  List<Drink> drinks;
  DateTime selectedDate;
  DateTime initialDate;

  User({
    this.name,
    this.drinkGoal,
    this.drinks,
    this.selectedDate,
    this.initialDate,
  });

  double getCompletedValue() {
    double total = 0;

    for (Drink drink in drinks) {
      bool day = drink.date.day == selectedDate.day;
      bool month = drink.date.month == selectedDate.month;
      bool year = drink.date.year == selectedDate.year;

      if (day && month && year) {
        total += drink.value;
      }
    }

    return total;
  }

  List<Drink> getSelectedDrinks() {
    List<Drink> list = [];

    for (Drink drink in drinks) {
      bool day = drink.date.day == selectedDate.day;
      bool month = drink.date.month == selectedDate.month;
      bool year = drink.date.year == selectedDate.year;

      if (day && month && year) {
        list.add(drink);
      }
    }

    return list;
  }
}
