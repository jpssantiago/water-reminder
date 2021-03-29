import 'package:flutter/material.dart';

AppBar buildWhiteAppBar({String title}) {
  return AppBar(
    backgroundColor: Colors.white,
    elevation: 0,
    iconTheme: IconThemeData(color: Colors.black),
    title: title != null
        ? Text(
            title,
            style: TextStyle(
              color: Colors.black,
              fontSize: 14,
              fontWeight: FontWeight.bold,
            ),
          )
        : null,
  );
}
