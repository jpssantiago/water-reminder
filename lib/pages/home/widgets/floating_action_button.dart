import 'package:flutter/material.dart';

FloatingActionButton buildFloatingActionButton(BuildContext context) {
  return FloatingActionButton(
    onPressed: () {
      Navigator.of(context).pushNamed('/add_drink');
    },
    child: Icon(Icons.add),
  );
}
