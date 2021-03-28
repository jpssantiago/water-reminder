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

  static DrinkType coffee() {
    return DrinkType(
      name: 'coffee',
      icon: Icons.local_cafe,
    );
  }

  static DrinkType tea() {
    return DrinkType(
      name: 'tea',
      icon: Icons.emoji_food_beverage,
    );
  }

  static DrinkType milk() {
    return DrinkType(
      name: 'milk',
      icon: Icons.local_cafe,
    );
  }

  static DrinkType soda() {
    return DrinkType(
      name: 'soda',
      icon: Icons.fastfood,
    );
  }

  static DrinkType beer() {
    return DrinkType(
      name: 'beer',
      icon: Icons.sports_bar,
    );
  }

  static DrinkType wine() {
    return DrinkType(
      name: 'wine',
      icon: Icons.wine_bar,
    );
  }

  static List<DrinkType> getTypes() {
    return [
      water(),
      coffee(),
      tea(),
      milk(),
      soda(),
      beer(),
      wine(),
    ];
  }
}
