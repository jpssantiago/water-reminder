import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import 'package:app/utils/custom_date_utils.dart';

String getFormattedDate(DateTime date) {
  if (CustomDateUtils.isToday(date)) {
    return 'Hoje';
  }

  if (CustomDateUtils.isYesterday(date)) {
    return 'Ontem';
  }

  DateFormat format = DateFormat('dd MMM yy');

  return format.format(date).toUpperCase();
}

AppBar buildHomeAppBar(
    {DateTime date, VoidCallback onIncrement, VoidCallback onDecrement}) {
  return AppBar(
    automaticallyImplyLeading: false,
    brightness: Brightness.dark,
    backgroundColor: Color(0xFF14213D),
    title: buildTitle(),
    actions: buildActions(
      date: date,
      onIncrement: onIncrement,
      onDecrement: onDecrement,
    ),
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
        Text(getFormattedDate(date)),
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
