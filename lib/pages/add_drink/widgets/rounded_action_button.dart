import 'package:flutter/material.dart';

class RoundedActionButton extends StatelessWidget {
  final VoidCallback onTap;
  final IconData icon;

  RoundedActionButton({
    @required this.onTap,
    this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 36,
        height: 36,
        decoration: BoxDecoration(
          color: Colors.white,
          shape: BoxShape.circle,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(.25),
              offset: Offset(0, 4),
              blurRadius: 4,
            )
          ],
        ),
        child: Center(
          child: Icon(
            icon ?? Icons.add,
            size: 24,
            color: Color(0xFF4F4F4F),
          ),
        ),
      ),
    );
  }
}
