import 'package:flutter/material.dart';

class SettingsDrawerItem extends StatelessWidget {
  final Widget prefix;
  final String text;
  final Widget suffix;
  final VoidCallback onTap;

  const SettingsDrawerItem({
    Key key,
    @required this.prefix,
    @required this.text,
    @required this.suffix,
    @required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: prefix,
      title: Text(
        text,
        style: TextStyle(
          color: Color(0xFF4F4F4F),
          fontWeight: FontWeight.normal,
        ),
      ),
      trailing: suffix,
      onTap: onTap,
    );
  }
}
