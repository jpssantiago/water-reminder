import 'package:app/widgets/white_app_bar.dart';
import 'package:flutter/material.dart';

class AddDrinkPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildWhiteAppBar(),
      body: Container(
        child: Center(
          child: Text('Adicionando bebida.'),
        ),
      ),
    );
  }
}
