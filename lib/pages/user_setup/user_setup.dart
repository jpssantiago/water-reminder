import 'package:app/widgets/white_app_bar.dart';
import 'package:flutter/material.dart';

class UserSetup extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildWhiteAppBar(),
      body: Container(
        child: Center(
          child: Text('User setup'),
        ),
      ),
    );
  }
}
