import 'package:flutter/material.dart';

import 'package:app/pages/welcome/welcome_page.dart';

import 'localization/localization_config.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/welcome',
      routes: {
        '/welcome': (context) => WelcomePage(),
      },
      supportedLocales: LocalizationConfig.getSupportedLocales(),
      localizationsDelegates: LocalizationConfig.getLocalizationDelegates(),
      localeResolutionCallback: LocalizationConfig.localeResolutionCallback,
    );
  }
}
