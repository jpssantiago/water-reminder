import 'package:app/data/test_data.dart';
import 'package:app/models/drink.dart';
import 'package:flutter/material.dart';

import 'package:app/models/user.dart';

class UserProvider extends ChangeNotifier {
  User _user = User();

  User get user => _user;

  User createUser({String name, double drinkGoal}) {
    return User(
      name: name,
      drinkGoal: drinkGoal,
      drinks: TestData.getDrinks(), // Replace with [] after test env.
      selectedDate: DateTime.now(),
      initialDate: DateTime.now(),
    );
  }

  void setUser(User user) {
    _user = user;

    notifyListeners();
  }

  void setDate(DateTime date) {
    _user.selectedDate = date;

    notifyListeners();
  }

  void deleteDrink(Drink drink) {
    _user.drinks.remove(drink);

    notifyListeners();
  }
}
