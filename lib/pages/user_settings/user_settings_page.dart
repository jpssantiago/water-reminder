import 'package:app/localization/app_localization.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:app/providers/user_provider.dart';
import 'package:app/widgets/white_app_bar.dart';

class UserSettingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<UserProvider>(
      builder: (context, provider, child) => Scaffold(
        appBar: buildWhiteAppBar(
          title: AppLocalizations.of(context).translate('settings'),
        ),
        body: Container(
          color: Colors.white,
          child: ListView(
            children: [
              ListTile(
                leading: Icon(Icons.person),
                title: Text(
                  AppLocalizations.of(context).translate('edit_user'),
                ),
                trailing: RotatedBox(
                  quarterTurns: 1,
                  child: Icon(Icons.navigation),
                ),
                enableFeedback: true,
              ),
              ListTile(
                leading: Icon(Icons.local_drink),
                title: Text(
                  AppLocalizations.of(context).translate('edit_drink_goal'),
                ),
                trailing: Text(
                  '${provider.user.drinkGoal.toStringAsFixed(0)} ml',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
