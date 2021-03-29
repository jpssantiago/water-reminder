import 'package:flutter/material.dart';

import 'package:app/models/drink.dart';

import 'package:app/models/user.dart';

class UserProvider extends ChangeNotifier {
  User _user = User();

  User get user => _user;

  User createUser({String name, double drinkGoal}) {
    return User(
      name: name,
      drinkGoal: drinkGoal,
      drinks: [], // Replace with [] after test env.
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

  void addDrink(Drink drink) {
    _user.drinks.add(drink);

    notifyListeners();
  }

  void editDrinkGoal(double drinkGoal) {
    _user.drinkGoal = drinkGoal;

    notifyListeners();
  }
}
