import 'package:flutter/material.dart';

import 'package:app/localization/app_localization.dart';

class PageSlides extends StatelessWidget {
  final Function(int) onPageChanged;

  PageSlides({
    @required this.onPageChanged,
  });

  @override
  Widget build(BuildContext context) {
    final PageController controller = PageController();

    final List<dynamic> pages = [
      {
        'image': 'assets/images/welcome_0.png',
        'title': AppLocalizations.of(context).translate('welcome_0_title'),
        'text': AppLocalizations.of(context).translate('welcome_0_text'),
      },
      {
        'image': 'assets/images/welcome_1.png',
        'title': AppLocalizations.of(context).translate('welcome_1_title'),
        'text': AppLocalizations.of(context).translate('welcome_1_text'),
      },
      {
        'image': 'assets/images/welcome_2.png',
        'title': AppLocalizations.of(context).translate('welcome_2_title'),
        'text': AppLocalizations.of(context).translate('welcome_2_text'),
      },
    ];

    final Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      height: size.height * .4,
      child: PageView.builder(
          onPageChanged: onPageChanged,
          controller: controller,
          itemCount: pages.length,
          itemBuilder: (context, index) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  pages[index]['image'],
                  height: size.height * .2,
                ),
                Container(height: 50),
                Text(
                  pages[index]['title'],
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Container(height: 15),
                Container(
                  width: size.width * .8,
                  child: Text(
                    pages[index]['text'],
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xFF4F4F4F),
                      fontSize: 14,
                    ),
                  ),
                ),
              ],
            );
          }),
    );
  }
}
