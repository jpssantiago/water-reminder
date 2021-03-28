import 'package:flutter/material.dart';

import 'package:app/pages/user_setup/widgets/input.dart';
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
            title: 'Qual será a sua meta diária (em ml) ?',
            progress: .5,
          ),
          Spacer(flex: 1),
          Input(
            controller: controller,
            label: 'Meta diária (em ml)...',
            inputType: TextInputType.number,
          ),
          Spacer(flex: 1),
          ExpandedButton(
            onTap: handleSubmit,
            text: 'FINALIZAR',
          ),
        ],
      ),
    );
  }
}
