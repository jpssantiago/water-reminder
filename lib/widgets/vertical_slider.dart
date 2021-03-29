import 'package:flutter/material.dart';

class VerticalSlider extends StatelessWidget {
  final double value;
  final double max;
  final Function(double) onChanged;

  VerticalSlider({
    @required this.value,
    this.max,
    @required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 70,
      height: 250,
      child: RotatedBox(
        quarterTurns: 3,
        child: SliderTheme(
          data: SliderThemeData(
            trackHeight: 70,
            trackShape: RectangularSliderTrackShape(),
            overlayShape: SliderComponentShape.noOverlay,
            thumbShape: SliderComponentShape.noThumb,
          ),
          child: Slider(
            value: value,
            max: max,
            min: 0,
            divisions: 12,
            onChanged: onChanged,
          ),
        ),
      ),
    );
  }
}
