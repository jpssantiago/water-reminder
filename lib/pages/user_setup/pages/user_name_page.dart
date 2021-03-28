import 'package:flutter/material.dart';

import 'package:app/pages/user_setup/widgets/input.dart';
import 'package:app/widgets/expanded_button.dart';

import '../widgets/top_bar.dart';

class UserName extends StatelessWidget {
  final Function(String) onSubmit;

  const UserName({
    this.onSubmit,
  });

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final TextEditingController controller = TextEditingController(text: '');

    void handleSubmit() {
      String text = controller.text;
      if (text == null || text == '') return;

      onSubmit(text);
    }

    return Container(
      width: size.width,
      height: size.height,
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          TopBar(
            title: 'Como você gostaria de ser chamado?',
            progress: .5,
          ),
          Spacer(flex: 1),
          Input(
            controller: controller,
            label: 'Seu nome...',
          ),
          Spacer(flex: 1),
          ExpandedButton(
            onTap: handleSubmit,
            text: 'PRÓXIMO',
          ),
        ],
      ),
    );
  }
}
