import 'package:flutter/material.dart';

class TopBar extends StatelessWidget {
  final String title;
  final double progress;

  const TopBar({
    this.title,
    this.progress,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20),
      child: Container(
        height: 50,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: 220,
              child: Text(
                title ?? 'Title',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              width: 24,
              height: 24,
              child: CircularProgressIndicator(
                value: progress ?? 1,
                backgroundColor: Colors.grey,
              ),
            )
          ],
        ),
      ),
    );
  }
}
