import 'package:flutter/material.dart';

import 'package:app/models/drink_type.dart';
import 'package:app/providers/user_provider.dart';
import 'package:app/widgets/snack_message.dart';

import 'package:app/localization/app_localization.dart';
import 'package:app/models/drink.dart';
import 'package:app/pages/add_drink/widgets/drink_list.dart';
import 'package:app/widgets/expanded_button.dart';
import 'package:app/widgets/white_app_bar.dart';
import 'package:provider/provider.dart';
import 'package:uuid/uuid.dart';

import 'widgets/drink_controller.dart';

import 'package:app/controllers/drink_controller.dart'
    as DatabaseDrinkController;

class AddDrinkPage extends StatefulWidget {
  @override
  _AddDrinkPageState createState() => _AddDrinkPageState();
}

class _AddDrinkPageState extends State<AddDrinkPage> {
  int selectedType = 0;
  double value = 600;
  double maxValue = 1200;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    void changeSelectedType(int index) {
      setState(() {
        selectedType = index;
      });
    }

    void handleValueChange(double newValue) {
      setState(() {
        value = newValue;
      });
    }

    void incrementBy10() {
      setState(() {
        value += 10;

        if (value >= maxValue) value = maxValue;
      });
    }

    void decrementBy10() {
      setState(() {
        value -= 10;

        if (value < 0) value = 0;
      });
    }

    void handleSubmit() {
      if (value <= 0) {
        return;
      }

      Drink drink = Drink(
        id: Uuid().v4(),
        type: DrinkType.getTypes()[selectedType],
        value: value,
        date: DateTime.now(),
      );

      DatabaseDrinkController.DrinkController.addDrink(drink);

      var provider = Provider.of<UserProvider>(
        context,
        listen: false,
      );
      provider.addDrink(drink);

      Navigator.of(context).pop();

      showSnackMessage(
        context,
        AppLocalizations.of(context).translate('drink_added'),
      ); // translate

      // TODO: Show screen with completed goal message.
      // var user = provider.user;
      // if (user.getCompletedValue() >= user.drinkGoal) {
      //   print('completou');
      // }
    }

    return Scaffold(
      appBar: buildWhiteAppBar(),
      body: Container(
        width: size.width,
        height: size.height,
        color: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween, // spaceBetween
          children: [
            DrinkList(
              selectedType: selectedType,
              onTap: changeSelectedType,
            ),
            DrinkController(
              value: value,
              maxValue: maxValue,
              onChanged: handleValueChange,
              onIncrement: incrementBy10,
              onDecrement: decrementBy10,
            ),
            ExpandedButton(
              text: AppLocalizations.of(context).translate('add'),
              onTap: handleSubmit,
            )
          ],
        ),
      ),
    );
  }
}
