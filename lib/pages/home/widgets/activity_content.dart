import 'package:app/models/user.dart';
import 'package:app/pages/home/widgets/activity_grid.dart';
import 'package:app/pages/home/widgets/empty_list_card.dart';
import 'package:flutter/material.dart';

class ActivityContent extends StatelessWidget {
  final User user;

  const ActivityContent({
    @required this.user,
  });

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    Widget buildActivity() {
      final list = user.getSelectedDrinks();

      if (list == null || list.length == 0) {
        return EmptyListCard();
      }

      return ActivityGrid(user: user);
    }

    return Container(
      child: Stack(
        children: [
          Container(
            height: 80,
            color: Color(0xFF14213D),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 15,
              right: 15,
              top: 30,
              bottom: 30,
            ),
            child: buildActivity(),
          )
        ],
      ),
    );
  }
}
