import 'package:app/controllers/user_controller.dart';
import 'package:app/widgets/snack_message.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:app/localization/app_localization.dart';
import 'package:app/pages/user_settings/widgets/custom_title.dart';
import 'package:app/providers/user_provider.dart';
import 'package:app/widgets/expanded_button.dart';
import 'package:app/widgets/input.dart';

import 'package:app/widgets/white_app_bar.dart';

class EditUserPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final TextEditingController controller = TextEditingController();
    final Size size = MediaQuery.of(context).size;

    void handleSubmit() {
      String text = controller.text;

      if (text == null || text == '') return;

      UserController.editUserName(text);

      Provider.of<UserProvider>(context, listen: false).editName(text);

      Navigator.of(context).pop(); // Editar nome
      Navigator.of(context).pop(); // Drawer

      showSnackMessage(
        context,
        AppLocalizations.of(context).translate(
          'user_saved',
        ),
      );
    }

    return Scaffold(
      appBar: buildWhiteAppBar(),
      body: Container(
        width: size.width,
        height: size.height,
        color: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CustomTitle(
              title: AppLocalizations.of(context).translate(
                'setup_name_title',
              ),
            ),
            Input(
              controller: controller,
              onSubmit: handleSubmit,
              label: AppLocalizations.of(context).translate(
                'setup_name_label',
              ),
            ),
            ExpandedButton(
              text: AppLocalizations.of(context)
                  .translate(
                    'save',
                  )
                  .toUpperCase(),
              onTap: handleSubmit,
            )
          ],
        ),
      ),
    );
  }
}
