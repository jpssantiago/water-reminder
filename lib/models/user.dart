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
}
