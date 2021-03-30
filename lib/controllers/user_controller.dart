import 'package:app/data/database_provider.dart';

import 'package:app/models/user.dart';

class UserController {
  static Future<User> getUser() async {
    final db = await DatabaseProvider.db.database;

    final response = await db.query('users');

    if (response == null || response.length == 0) {
      return null;
    }
    return await User.fromJson(response[0]);
  }

  static addUser(User user) async {
    final db = await DatabaseProvider.db.database;

    DateTime date = user.initialDate;
    String formattedDate = '${date.day}/${date.month}/${date.year}';

    final response = await db.rawInsert('''
      INSERT INTO users(name, drink_goal, initial_date)
      VALUES (?, ?, ?)
    ''', [user.name, user.drinkGoal, formattedDate]);

    return response;
  }

  static editUserName(String name) async {
    final db = await DatabaseProvider.db.database;

    final response = await db.rawUpdate('''
      UPDATE users SET name = ?
    ''', [name]);

    return response;
  }

  static editDrinkGoal(double value) async {
    final db = await DatabaseProvider.db.database;

    final response = await db.rawQuery('''
      UPDATE users SET drink_goal = ?
    ''', [value]);

    return response;
  }
}
