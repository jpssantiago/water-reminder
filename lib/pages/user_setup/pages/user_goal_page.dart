import 'package:flutter/material.dart';

import 'package:app/localization/app_localization.dart';

import 'package:app/widgets/input.dart';
import 'package:app/widgets/expanded_button.dart';

import '../widgets/top_bar.dart';

class UserGoal extends StatelessWidget {
  final Function(double) onSubmit;

  const UserGoal({
    this.onSubmit,
  });

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final TextEditingController controller = TextEditingController(text: '');

    void handleSubmit() {
      String text = controller.text;
      if (text == null || text == '') return;

      double value = double.parse(text);
      onSubmit(value);
    }

    return Container(
      width: size.width,
      height: size.height,
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          TopBar(
            title: AppLocalizations.of(context).translate('setup_goal_title'),
            progress: .5,
          ),
          Spacer(flex: 1),
          Input(
            controller: controller,
            label: AppLocalizations.of(context).translate('setup_goal_label'),
            inputType: TextInputType.number,
            onSubmit: handleSubmit,
          ),
          Spacer(flex: 1),
          ExpandedButton(
            onTap: handleSubmit,
            text: AppLocalizations.of(context).translate('next').toUpperCase(),
          ),
        ],
      ),
    );
  }
}
