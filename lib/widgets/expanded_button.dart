import 'package:flutter/material.dart';

class ExpandedButton extends StatelessWidget {
  final String text;
  final VoidCallback onTap;

  const ExpandedButton({
    @required this.text,
    @required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: size.width,
        height: 50,
        color: Colors.blue,
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              color: Colors.white,
              fontSize: 14,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
