import 'package:app/localization/app_localization.dart';
import 'package:flutter/material.dart';

class EmptyListCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(5),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(.25),
            offset: Offset(0, 4),
            blurRadius: 4,
          )
        ],
      ),
      child: Center(
        child: Text(
          AppLocalizations.of(context).translate('no_activities'),
          style: TextStyle(
            color: Color(0xFF4F4F4F),
            fontSize: 16,
          ),
        ),
      ),
    );
  }
}
