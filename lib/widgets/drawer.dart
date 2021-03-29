import 'package:flutter/material.dart';

import 'package:app/models/user.dart';

import 'settings_drawer_content.dart';
import 'settings_drawer_header.dart';

Drawer buildDrawer({BuildContext context, User user}) {
  return Drawer(
    child: Column(
      children: [
        SettingsDrawerHeader(user: user),
        SettingsDrawerContent(user: user),
      ],
    ),
  );
}
