import 'package:app/pages/add_drink/widgets/drink_list.dart';
import 'package:app/pages/add_drink/widgets/header_title.dart';
import 'package:app/widgets/white_app_bar.dart';
import 'package:flutter/material.dart';

class AddDrinkPage extends StatefulWidget {
  @override
  _AddDrinkPageState createState() => _AddDrinkPageState();
}

class _AddDrinkPageState extends State<AddDrinkPage> {
  int selectedType = 0;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    void changeSelectedType(int index) {
      setState(() {
        selectedType = index;
      });
    }

    return Scaffold(
      appBar: buildWhiteAppBar(),
      body: Container(
        width: size.width,
        height: size.height,
        color: Colors.white,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              HeaderTitle(), // Translate
              Container(height: 10),
              DrinkList(
                selectedType: selectedType,
                onTap: changeSelectedType,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
