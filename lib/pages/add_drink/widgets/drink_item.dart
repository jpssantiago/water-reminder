import 'package:flutter/material.dart';

import 'package:app/localization/app_localization.dart';
import 'package:app/models/drink_type.dart';

class DrinkItem extends StatelessWidget {
  final DrinkType type;
  final bool selected;
  final Function(int) onTap;
  final int index;

  const DrinkItem({
    @required this.type,
    @required this.selected,
    @required this.onTap,
    @required this.index,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onTap(index),
      child: Padding(
        padding: const EdgeInsets.only(left: 20, bottom: 10),
        child: Container(
          width: 70,
          height: 100,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(2),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(.25),
                offset: Offset(0, 4),
                blurRadius: 4,
              ),
            ],
            border: selected ? Border.all(color: Colors.blue) : null,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(type.icon,
                  color: selected ? Colors.blue : Color(0xFF4F4F4F)),
              Container(height: 10),
              Text(
                AppLocalizations.of(context).translate(type.name),
                style: TextStyle(
                  color: selected ? Colors.blue : Color(0xFF4F4F4F),
                  fontSize: 12,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
