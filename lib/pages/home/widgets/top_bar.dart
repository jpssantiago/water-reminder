import 'package:app/models/user.dart';
import 'package:app/pages/home/widgets/top_bar_header.dart';
import 'package:app/pages/home/widgets/top_bar_info.dart';
import 'package:flutter/material.dart';

class TopBar extends StatelessWidget {
  final User user;

  const TopBar({
    @required this.user,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 151,
      color: Color(0xFF14213D),
      child: Column(
        children: [
          TopBarHeader(user: user),
          TopBarInfo(user: user),
        ],
      ),
    );
  }
}
