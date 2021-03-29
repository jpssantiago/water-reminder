import 'package:app/pages/add_drink/widgets/rounded_action_button.dart';
import 'package:app/widgets/vertical_slider.dart';
import 'package:flutter/material.dart';

class DrinkController extends StatelessWidget {
  final double value;
  final double maxValue;
  final Function(double) onChanged;
  final VoidCallback onIncrement;
  final VoidCallback onDecrement;

  DrinkController({
    @required this.value,
    this.maxValue,
    @required this.onChanged,
    @required this.onIncrement,
    @required this.onDecrement,
  });

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Padding(
      padding: const EdgeInsets.only(top: 30),
      child: Container(
        width: size.width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              '${value.toStringAsFixed(0)} ml',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
            Container(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                RoundedActionButton(
                  onTap: onDecrement,
                  icon: Icons.remove,
                ),
                VerticalSlider(
                  value: value,
                  max: maxValue ?? 1200,
                  onChanged: onChanged,
                ),
                RoundedActionButton(onTap: onIncrement),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
