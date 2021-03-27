import 'package:flutter/material.dart';

class FilledButton extends StatelessWidget {
  final VoidCallback onTap;
  final String text;

  final Color color;
  final String foregroundColor;

  const FilledButton({
    @required this.onTap,
    @required this.text,
    this.color,
    this.foregroundColor,
  });

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: size.width * .7,
        height: 45,
        decoration: BoxDecoration(
          color: color ?? Colors.blue,
          borderRadius: BorderRadius.circular(2),
        ),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              color: foregroundColor ?? Colors.white,
              fontSize: 14,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
