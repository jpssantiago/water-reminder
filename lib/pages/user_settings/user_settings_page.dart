import 'package:app/widgets/white_app_bar.dart';
import 'package:flutter/material.dart';

class UserSettingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildWhiteAppBar(),
      body: Container(
        color: Colors.white,
        child: Center(
          child: Text('Settings'),
        ),
      ),
    );
  }
}
