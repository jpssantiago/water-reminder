import 'package:app/controllers/drink_controller.dart';
import 'package:app/localization/app_localization.dart';
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
          AppLocalizations.of(context).translate('delete_drink'),
          style: TextStyle(
            color: Colors.redAccent,
          ),
        ),
        onTap: () {
          DrinkController.deleteDrink(drink.id);

          Provider.of<UserProvider>(context, listen: false).deleteDrink(drink);

          showSnackMessage(
            context,
            AppLocalizations.of(context).translate('drink_deleted'),
          );

          Navigator.of(context).pop();
        },
      );
    },
  );
}
