import 'package:flutter/material.dart';

import 'package:app/localization/app_localization.dart';

class CustomTitle extends StatelessWidget {
  const CustomTitle({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20),
      child: Text(
        AppLocalizations.of(context).translate(
          'setup_goal_title',
        ),
        style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
