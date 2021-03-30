import 'package:app/localization/app_localization.dart';
import 'package:flutter/material.dart';

import 'package:app/widgets/filled_button.dart';
import 'package:app/widgets/white_app_bar.dart';
import 'widgets/dot.dart';
import 'widgets/page_slides.dart';

class WelcomePage extends StatefulWidget {
  @override
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  int _activePage = 0;

  @override
  Widget build(BuildContext context) {
    void onPageChanged(int index) {
      setState(() {
        _activePage = index;
      });
    }

    List<Dot> renderDots() {
      List<Dot> list = [];

      for (int i = 0; i < 3; i++) {
        list.add(Dot(
          active: i == _activePage,
        ));
      }

      return list;
    }

    return Scaffold(
      appBar: buildWhiteAppBar(),
      body: Container(
        color: Colors.white,
        height: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Spacer(flex: 1),
            PageSlides(
              onPageChanged: onPageChanged,
            ),
            Spacer(flex: 1),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: renderDots(),
            ),
            Spacer(flex: 1),
            FilledButton(
              onTap: () {
                Navigator.of(context).pushNamed('/user_setup');
              },
              text: AppLocalizations.of(context)
                  .translate(
                    'next',
                  )
                  .toUpperCase(),
            ),
            Spacer(flex: 1),
          ],
        ),
      ),
    );
  }
}
