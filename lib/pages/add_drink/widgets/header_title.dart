import 'package:app/localization/app_localization.dart';
import 'package:flutter/material.dart';

class HeaderTitle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20),
      child: Text(
        AppLocalizations.of(context).translate('select_drinks_above'),
        style: TextStyle(
          color: Color(0xFF4F4F4F),
          fontSize: 14,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
