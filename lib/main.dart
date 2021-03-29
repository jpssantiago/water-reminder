import 'package:app/pages/add_drink/add_drink_page.dart';
import 'package:app/pages/home/home_page.dart';
import 'package:app/providers/user_provider.dart';
import 'package:flutter/material.dart';

import 'package:app/pages/user_setup/user_setup.dart';
import 'package:app/pages/welcome/welcome_page.dart';
import 'package:provider/provider.dart';

import 'localization/localization_config.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => UserProvider(),
      child: MaterialApp(
        initialRoute: '/welcome',
        routes: {
          '/welcome': (context) => WelcomePage(),
          '/user_setup': (context) => UserSetup(),
          '/home': (context) => HomePage(),
          '/add_drink': (context) => AddDrinkPage(),
        },
        supportedLocales: LocalizationConfig.getSupportedLocales(),
        localizationsDelegates: LocalizationConfig.getLocalizationDelegates(),
        localeResolutionCallback: LocalizationConfig.localeResolutionCallback,
      ),
    );
  }
}
