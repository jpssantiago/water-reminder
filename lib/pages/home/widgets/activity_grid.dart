import 'package:app/pages/home/widgets/activity_item.dart';
import 'package:flutter/material.dart';

import 'package:app/models/drink.dart';
import 'package:app/models/user.dart';

class ActivityGrid extends StatelessWidget {
  final User user;

  const ActivityGrid({
    this.user,
  });

  @override
  Widget build(BuildContext context) {
    double getHeight() {
      double itemHeight = 100;
      int count = user.getSelectedDrinks().length;
      int rows = (count / 3).ceil();

      return rows * itemHeight;
    }

    List<Widget> buildList() {
      List<Widget> list = [];

      for (Drink drink in user.getSelectedDrinks()) {
        list.add(
          ActivityItem(drink: drink),
        );
      }

      return list;
    }

    return Container(
      height: getHeight(),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(5),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(.25),
            offset: Offset(0, 4),
            blurRadius: 4,
          ),
        ],
      ),
      child: GridView(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
          mainAxisExtent: 100,
        ),
        children: buildList(),
      ),
    );
  }
}
