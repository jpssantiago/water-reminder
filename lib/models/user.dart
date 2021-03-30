import 'package:app/controllers/drink_controller.dart';

import 'drink.dart';

class User {
  String name;
  double drinkGoal;
  List<Drink> drinks;
  DateTime selectedDate;
  DateTime initialDate;
  String image = 'assets/images/no_profile_image.jpg'; // Temporary

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

  static Future<User> fromJson(json) async {
    List<String> date = json['initial_date'].split('/');
    DateTime initialDate = DateTime(
      int.parse(
        date[2],
      ),
      int.parse(date[1]),
      int.parse(date[0]),
    );

    List<Drink> drinks = await DrinkController.getDrinks();

    return User(
      name: json['name'],
      drinkGoal: double.parse(json['drink_goal'].toString()),
      initialDate: initialDate,
      selectedDate: DateTime.now(),
      drinks: drinks,
    );
  }
}
