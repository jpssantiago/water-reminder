import 'package:flutter/material.dart';

class PageSlides extends StatelessWidget {
  final Function(int) onPageChanged;

  PageSlides({
    @required this.onPageChanged,
  });

  final List<dynamic> pages = [
    {
      'image': 'assets/images/welcome_0.png',
      'title': 'Alimentação saudável',
      'text':
          'Uma alimentação saudável é essencial para manter uma vida saudável.',
    },
    {
      'image': 'assets/images/welcome_1.png',
      'title': 'Monitore seu desempenho',
      'text':
          'Monitore seu desempenho com gráficos, estatísticas, dicas e muito mais.',
    },
    {
      'image': 'assets/images/welcome_2.png',
      'title': 'Aplicativo intuitivo',
      'text':
          'Nosso aplicativo foi desenvolvido pensando na experiência do usuário.',
    },
  ];

  @override
  Widget build(BuildContext context) {
    final PageController controller = PageController();

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
