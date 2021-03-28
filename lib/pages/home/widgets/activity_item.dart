import 'package:app/localization/app_localization.dart';
import 'package:app/models/drink.dart';
import 'package:flutter/material.dart';

class ActivityItem extends StatelessWidget {
  final Drink drink;

  const ActivityItem({
    @required this.drink,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 70,
      height: 100,
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Icon(drink.type.icon, color: Colors.blue),
          Text(
            '${drink.value.toStringAsFixed(0)} ml',
            style: TextStyle(
              color: Colors.black,
              fontSize: 14,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            AppLocalizations.of(context).translate(drink.type.name),
            style: TextStyle(
              color: Color(0xFF5C5C5C),
              fontSize: 14,
            ),
          ),
        ],
      ),
    );
  }
}
