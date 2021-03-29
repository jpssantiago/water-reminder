import 'package:app/localization/app_localization.dart';
import 'package:app/models/user.dart';
import 'package:flutter/material.dart';

class SettingsDrawerHeader extends StatelessWidget {
  final User user;

  const SettingsDrawerHeader({
    Key key,
    @required this.user,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double statusBarHeight = MediaQuery.of(context).padding.top;

    String getFirstName() {
      String firstName = user.name.split(' ')[0];
      return firstName;
    }

    return Container(
      height: statusBarHeight + 150,
      color: Color(0xFF046582),
      child: Padding(
        padding: EdgeInsets.only(left: 10, top: statusBarHeight),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 64,
              height: 64,
              decoration: BoxDecoration(
                color: Colors.grey,
                shape: BoxShape.circle,
              ),
            ),
            Container(width: 10),
            Row(
              children: [
                Text(
                  '${AppLocalizations.of(context).translate('hello')}, ',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
                Text(
                  '${getFirstName()}.',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
