import 'package:app/localization/app_localization.dart';
import 'package:app/models/user.dart';
import 'package:app/utils/custom_date_utils.dart';
import 'package:flutter/material.dart';

class TopBarHeader extends StatelessWidget {
  final User user;

  const TopBarHeader({
    @required this.user,
  });

  @override
  Widget build(BuildContext context) {
    String formatGreeting() {
      String key = CustomDateUtils.getGreeting();
      String translated = AppLocalizations.of(context).translate(key);

      return '$translated, ';
    }

    String getFirstName() {
      String firstName = user.name.split(' ')[0];
      return firstName;
    }

    final Size size = MediaQuery.of(context).size;

    return Padding(
      padding: const EdgeInsets.only(left: 15, right: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            onTap: () {
              Scaffold.of(context).openDrawer();
            },
            child: Container(
              width: 36,
              height: 36,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(18),
                child: Image.asset(user.image),
              ),
            ),
          ),
          Container(
            width: size.width * .6,
            height: 30,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  formatGreeting(),
                  style: TextStyle(
                    color: Colors.white.withOpacity(.85),
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Flexible(
                  child: Text(
                    '${getFirstName()}.',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                    overflow: TextOverflow.ellipsis,
                    softWrap: true,
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: 36,
            height: 36,
            decoration: BoxDecoration(
              color: Color(0xFF222F4B),
              borderRadius: BorderRadius.circular(5),
            ),
            child: Center(
              child: Icon(
                Icons.star,
                color: Color(0xFFFFB800),
              ),
            ),
          )
        ],
      ),
    );
  }
}
