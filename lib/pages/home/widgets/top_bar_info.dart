import 'package:flutter/material.dart';

import 'package:app/localization/app_localization.dart';
import 'package:app/models/user.dart';

class TopBarInfo extends StatelessWidget {
  final User user;

  const TopBarInfo({
    this.user,
  });

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Padding(
      padding: const EdgeInsets.only(top: 30, left: 15, right: 15),
      child: Container(
        height: 75,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              AppLocalizations.of(context).translate('overview'),
              style: TextStyle(
                color: Colors.white,
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
            ),
            Row(
              children: [
                Text(
                  '900/',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  '1200',
                  style: TextStyle(
                    color: Color(0xFFC8C8C8),
                    fontSize: 16,
                  ),
                )
              ],
            ),
            Container(
              width: size.width,
              height: 15,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(3),
                child: LinearProgressIndicator(
                  value: .5,
                  backgroundColor: Color(0xFFC4C4C4),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
