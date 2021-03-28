import 'package:app/localization/app_localization.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import 'package:app/utils/custom_date_utils.dart';

String getFormattedDate({DateTime date, BuildContext context}) {
  if (CustomDateUtils.isToday(date)) {
    return AppLocalizations.of(context).translate('today');
  }

  if (CustomDateUtils.isYesterday(date)) {
    return AppLocalizations.of(context).translate('yesterday');
  }

  DateFormat format = DateFormat('dd MMM yy');

  return format.format(date).toUpperCase();
}

AppBar buildHomeAppBar({
  DateTime date,
  VoidCallback onIncrement,
  VoidCallback onDecrement,
  BuildContext context,
}) {
  return AppBar(
    automaticallyImplyLeading: false,
    brightness: Brightness.dark,
    backgroundColor: Color(0xFF14213D),
    elevation: 0,
    title: buildTitle(),
    actions: buildActions(
        date: date,
        onIncrement: onIncrement,
        onDecrement: onDecrement,
        context: context),
  );
}

Text buildTitle() {
  return Text(
    'uFittness',
    style: TextStyle(
      color: Colors.white,
      fontSize: 16,
      fontWeight: FontWeight.bold,
    ),
  );
}

List<Widget> buildActions({
  DateTime date,
  VoidCallback onIncrement,
  VoidCallback onDecrement,
  BuildContext context,
}) {
  return [
    Row(
      children: [
        GestureDetector(
          onTap: onDecrement,
          child: Icon(
            Icons.chevron_left,
            color: Colors.white,
          ),
        ),
        Container(width: 10),
        Text(getFormattedDate(date: date, context: context)),
        Container(width: 10),
        GestureDetector(
          onTap: onIncrement,
          child: Icon(
            Icons.chevron_right,
            color: Colors.white,
          ),
        )
      ],
    )
  ];
}
