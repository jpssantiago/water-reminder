import 'package:flutter/material.dart';

class Input extends StatelessWidget {
  final TextEditingController controller;
  final String label;
  final TextInputType inputType;

  const Input({
    @required this.controller,
    this.label,
    this.inputType,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20),
      child: Container(
        height: 60,
        child: TextField(
          autofocus: true,
          controller: controller,
          decoration: InputDecoration(labelText: label ?? 'Label'),
          keyboardType: inputType ?? TextInputType.text,
        ),
      ),
    );
  }
}
