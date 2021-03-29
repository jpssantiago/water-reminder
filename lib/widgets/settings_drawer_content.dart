import 'package:flutter/material.dart';

import 'package:app/models/user.dart';

import 'package:app/localization/app_localization.dart';

import 'settings_drawer_item.dart';

class SettingsDrawerContent extends StatelessWidget {
  final User user;

  const SettingsDrawerContent({
    Key key,
    @required this.user,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Container(
        color: Colors.white,
        child: Column(
          children: [
            // Editar usuário
            SettingsDrawerItem(
              prefix: Icon(Icons.perm_identity),
              text: AppLocalizations.of(context).translate('edit_user'),
              suffix: RotatedBox(
                quarterTurns: 1,
                child: Icon(Icons.navigation),
              ),
              onTap: () {},
            ),
            SettingsDrawerItem(
              prefix: Icon(Icons.local_drink),
              text: AppLocalizations.of(context).translate('edit_drink_goal'),
              suffix: Text('${user.drinkGoal.toStringAsFixed(0)} ml'),
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
