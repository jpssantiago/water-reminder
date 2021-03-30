import 'package:app/localization/app_localization.dart';
import 'package:app/providers/user_provider.dart';
import 'package:app/widgets/expanded_button.dart';
import 'package:app/widgets/input.dart';
import 'package:app/widgets/snack_message.dart';
import 'package:flutter/material.dart';

import 'package:app/widgets/white_app_bar.dart';
import 'package:provider/provider.dart';

import 'widgets/custom_title.dart';

class EditDrinkGoalPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final TextEditingController controller = TextEditingController();
    final Size size = MediaQuery.of(context).size;

    void handleSubmit() {
      String text = controller.text;

      if (text == null || text == '') return;

      double value = double.parse(text);
      if (value <= 0) return;

      Provider.of<UserProvider>(context, listen: false).editDrinkGoal(value);

      Navigator.of(context).pop(); // Edit page
      Navigator.of(context).pop(); // Drawer

      showSnackMessage(
        context,
        AppLocalizations.of(context).translate('drink_goal_saved'),
      );
    }

    return Scaffold(
      appBar: buildWhiteAppBar(),
      body: Container(
        width: size.width,
        height: size.height,
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomTitle(),
            Input(
              controller: controller,
              label: AppLocalizations.of(context).translate('setup_goal_label'),
              onSubmit: handleSubmit,
              inputType: TextInputType.number,
            ),
            ExpandedButton(
              text:
                  AppLocalizations.of(context).translate('save').toUpperCase(),
              onTap: handleSubmit,
            )
          ],
        ),
      ),
    );
  }
}
