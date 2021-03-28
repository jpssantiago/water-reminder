import 'package:app/models/drink.dart';
import 'package:app/providers/user_provider.dart';
import 'package:app/widgets/snack_message.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void buildActivityItemBottomSheet(BuildContext context, Drink drink) {
  showModalBottomSheet(
    context: context,
    builder: (context) {
      return ListTile(
        leading: Icon(
          Icons.delete,
          color: Colors.redAccent,
        ),
        title: Text(
          'Deletar bebida.',
          style: TextStyle(
            color: Colors.redAccent,
          ),
        ),
        onTap: () {
          Provider.of<UserProvider>(context, listen: false).deleteDrink(drink);

          showSnackMessage(context, 'A bebida foi deletada com sucesso');

          Navigator.of(context).pop();
        },
      );
    },
  );
}
