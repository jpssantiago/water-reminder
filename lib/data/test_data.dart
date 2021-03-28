import 'package:app/models/drink.dart';
import 'package:app/models/drink_type.dart';

class TestData {
  static List<Drink> getDrinks() {
    return [
      Drink(
        id: '1',
        type: DrinkType.water(),
        value: 300,
        date: DateTime.now(),
      ),
    ];
  }
}
