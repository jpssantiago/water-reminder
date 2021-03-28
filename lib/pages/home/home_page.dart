import 'package:app/providers/user_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Consumer<UserProvider>(
      builder: (context, provider, child) => WillPopScope(
        onWillPop: () async => false,
        child: Scaffold(
          appBar: AppBar(
            automaticallyImplyLeading: false,
          ),
          body: Container(
            width: size.width,
            height: size.height,
            color: Colors.white,
            child: Column(
              children: [],
            ),
          ),
        ),
      ),
    );
  }
}
