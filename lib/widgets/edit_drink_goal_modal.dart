import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:app/localization/app_localization.dart';

import 'package:app/models/user.dart';
import 'package:app/providers/user_provider.dart';
import 'package:app/widgets/expanded_button.dart';
import 'package:app/widgets/input.dart';
import 'package:app/widgets/snack_message.dart';

void buildEditDrinnkGoalModal(BuildContext context, User user) {
  showModalBottomSheet(
    context: context,
    builder: (context) {
      final TextEditingController controller = TextEditingController();

      void handleSubmit() {
        String text = controller.text;

        if (text == null || text == '') return;

        Provider.of<UserProvider>(context, listen: false).editDrinkGoal(
          double.parse(text),
        );

        Navigator.of(context).pop(); // Bottom sheet
        Navigator.of(context).pop(); // Drawer

        showSnackMessage(
          context,
          AppLocalizations.of(context).translate('drink_goal_saved'),
        );
      }

      return Container(
        color: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 30, top: 30),
              child: Text(
                  AppLocalizations.of(context).translate('setup_goal_title')),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: Input(
                controller: controller,
                label:
                    AppLocalizations.of(context).translate('setup_goal_label'),
                inputType: TextInputType.number,
                onSubmit: handleSubmit,
              ),
            ),
            ExpandedButton(
              text: AppLocalizations.of(context)
                  .translate('global_save')
                  .toUpperCase(),
              onTap: handleSubmit,
            ),
          ],
        ),
      );
    },
  );
}
