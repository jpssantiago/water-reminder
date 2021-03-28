import 'package:app/models/drink_type.dart';

class Drink {
  String id;
  DrinkType type;
  double value;
  DateTime date;

  Drink({
    this.id,
    this.type,
    this.value,
    this.date,
  });
}
