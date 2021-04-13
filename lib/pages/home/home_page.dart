 import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:app/widgets/drawer.dart';
import 'package:app/pages/home/widgets/floating_action_button.dart';

import 'package:app/pages/home/widgets/top_bar.dart';
import 'package:app/pages/home/widgets/activity_content.dart';

import 'package:app/pages/home/widgets/app_bar.dart';
import 'package:app/providers/user_provider.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    void incrementDay(UserProvider provider) {
      var user = provider.user;

      DateTime newDate = user.selectedDate.add(Duration(days: 1));
      if (newDate.day > DateTime.now().day) return;

      provider.setDate(newDate);
    }

    void decrementDay(UserProvider provider) {
      var user = provider.user;

      DateTime newDate = user.selectedDate.subtract(Duration(days: 1));
      if (newDate.day < user.initialDate.day) return;

      provider.setDate(newDate);
    }

    return Consumer<UserProvider>(
      builder: (context, provider, child) => WillPopScope(
        onWillPop: () async => false,
        child: Scaffold(
          drawerEnableOpenDragGesture: false,
          appBar: buildHomeAppBar(
            date: provider.user.selectedDate,
            onIncrement: () => incrementDay(provider),
            onDecrement: () => decrementDay(provider),
            context: context,
          ),
          body: Container(
            width: size.width,
            height: size.height,
            color: Colors.white,
            child: ListView(
              children: [
                TopBar(user: provider.user),
                ActivityContent(user: provider.user),
              ],
            ),
          ),
          backgroundColor: Color(0xFFEFEFEF),
          floatingActionButton: buildFloatingActionButton(context),
          drawer: buildDrawer(context: context, user: provider.user),
        ),
      ),
    );
  }
}
