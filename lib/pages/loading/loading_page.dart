import 'package:app/controllers/user_controller.dart';
import 'package:app/models/user.dart';
import 'package:app/providers/user_provider.dart';
import 'package:app/widgets/white_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class LoadingPage extends StatefulWidget {
  @override
  _LoadingPageState createState() => _LoadingPageState();
}

class _LoadingPageState extends State<LoadingPage> {
  bool loading = true;

  @override
  void initState() {
    checkIfUserExists();

    super.initState();
  }

  void checkIfUserExists() async {
    User user = await UserController.getUser();

    if (user == null) {
      Navigator.of(context).pushNamed('/welcome');
      return;
    }

    Provider.of<UserProvider>(context, listen: false).setUser(user);
    Navigator.of(context).pushNamed('/home');
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: buildWhiteAppBar(),
      body: Container(
        width: size.width,
        height: size.height,
        color: Colors.white,
        child: Center(
          child: Container(
            width: 64,
            height: 64,
            child: CircularProgressIndicator(),
          ),
        ),
      ),
    );
  }
}
