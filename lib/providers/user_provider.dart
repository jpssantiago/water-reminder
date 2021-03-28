import 'package:flutter/material.dart';

import 'package:app/models/date.dart';
import 'package:app/models/user.dart';

class UserProvider extends ChangeNotifier {
  User _user = User();

  User get user => _user;

  User createUser({String name, double drinkGoal}) {
    return User(
      name: name,
      drinkGoal: drinkGoal,
      drinks: [],
      selectedDate: Date.fromDateTime(DateTime.now()),
    );
  }

  void setUser(User user) {
    _user = user;

    notifyListeners();
  }
}
