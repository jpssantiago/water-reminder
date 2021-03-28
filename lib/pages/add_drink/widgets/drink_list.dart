import 'package:flutter/material.dart';

import 'drink_item.dart';

import 'package:app/models/drink_type.dart';

class DrinkList extends StatelessWidget {
  final int selectedType;
  final Function(int) onTap;

  const DrinkList({
    @required this.selectedType,
    @required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    List<DrinkItem> buildList() {
      final List<DrinkItem> list = [];

      int index = 0;
      for (DrinkType type in DrinkType.getTypes()) {
        list.add(
          DrinkItem(
            type: type,
            selected: selectedType == index,
            onTap: onTap,
            index: index,
          ),
        );

        index++;
      }

      return list;
    }

    return Container(
      height: 110,
      child: ListView(
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.only(left: 0, right: 20),
        children: buildList(),
      ),
    );
  }
}
