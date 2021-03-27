import 'package:flutter/material.dart';

class Dot extends StatelessWidget {
  final bool active;

  const Dot({
    this.active,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 5, right: 5),
      child: Container(
        width: 8,
        height: 8,
        decoration: BoxDecoration(
          color: active ?? false ? Colors.blue : Colors.grey,
          shape: BoxShape.circle,
        ),
      ),
    );
  }
}
