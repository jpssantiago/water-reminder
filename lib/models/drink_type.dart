import 'package:flutter/material.dart';

class DrinkType {
  String name;
  IconData icon;

  DrinkType({
    this.name,
    this.icon,
  });

  static DrinkType water() {
    return DrinkType(
      name: 'water',
      icon: Icons.local_drink,
    );
  }

  static List<DrinkType> getTypes() {
    return [
      water(),
    ];
  }
}
