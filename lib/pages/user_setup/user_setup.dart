import 'package:app/pages/user_setup/config/user_setup_pages.dart';
import 'package:app/providers/user_provider.dart';
import 'package:app/widgets/white_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class UserSetup extends StatefulWidget {
  @override
  _UserSetupState createState() => _UserSetupState();
}

class _UserSetupState extends State<UserSetup> {
  int activePage = 0;
  String name;

  @override
  Widget build(BuildContext context) {
    void onUserSet(String text) {
      setState(() {
        name = text;
        activePage = 1;
      });
    }

    void onDrinkGoalSet(double drinkGoal) {
      final provider = Provider.of<UserProvider>(context, listen: false);
      final user = provider.createUser(
        name: name,
        drinkGoal: drinkGoal,
      );

      provider.setUser(user);
      Navigator.of(context).pushReplacementNamed('home');
    }

    final List<Widget> pages = UserSetupPages.getPages(
      onUserSet: onUserSet,
      onDrinkGoalSet: onDrinkGoalSet,
    );

    return Scaffold(
      appBar: buildWhiteAppBar(),
      body: pages[activePage],
    );
  }
}
