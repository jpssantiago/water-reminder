import 'package:app/pages/user_setup/pages/user_goal_page.dart';
import 'package:app/pages/user_setup/pages/user_name_page.dart';
import 'package:flutter/material.dart';

class UserSetupPages {
  static List<Widget> getPages({
    Function(String) onUserSet,
    Function(double) onDrinkGoalSet,
  }) {
    return [
      UserName(
        onSubmit: onUserSet,
      ),
      UserGoal(
        onSubmit: onDrinkGoalSet,
      )
    ];
  }
}
