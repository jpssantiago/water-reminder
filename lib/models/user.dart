import 'date.dart';
import 'drink.dart';

class User {
  String name;
  double drinkGoal;
  List<Drink> drinks;
  Date selectedDate;

  User({
    this.name,
    this.drinkGoal,
    this.drinks,
    this.selectedDate,
  });
}
