import 'package:app/data/database_provider.dart';

import 'package:app/models/drink.dart';

class DrinkController {
  static addDrink(Drink drink) async {
    final db = await DatabaseProvider.db.database;

    DateTime date = drink.date;
    String formattedDate = '${date.day}/${date.month}/${date.year}';

    final response = await db.rawInsert('''
      INSERT INTO drinks (id, drink_type, value, date)
      VALUES (?, ?, ?, ?)
    ''', [drink.id, drink.type.name, drink.value, formattedDate]);

    return response;
  }

  static Future<List<Drink>> getDrinks() async {
    final db = await DatabaseProvider.db.database;

    final response = await db.query('drinks');

    if (response == null || response.length == 0) {
      return [];
    }

    List<Drink> drinks = [];

    for (var item in response) {
      drinks.add(Drink.fromJson(item));
    }

    return drinks;
  }

  static deleteDrink(String id) async {
    final db = await DatabaseProvider.db.database;

    final response = await db.rawDelete('''
      DELETE FROM drinks WHERE id = ?
    ''', [id]);

    return response;
  }
}
