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

  static Drink fromJson(json) {
    List<String> date = json['date'].split('/');
    DateTime formattedate = DateTime(
      int.parse(
        date[2],
      ),
      int.parse(date[1]),
      int.parse(date[0]),
    );

    return Drink(
      id: json['id'],
      type: DrinkType.fromName(json['drink_type']),
      value: double.parse(json['value'].toString()),
      date: formattedate,
    );
  }
}
