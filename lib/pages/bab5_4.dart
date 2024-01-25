import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:tsunzu/shared/menu.dart';
import 'package:tsunzu/shared/markdown_ku.dart';

import '../shared/no_halaman.dart';
import 'pages.dart';

class BabLima4 extends StatelessWidget {
  const BabLima4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          // color:Color(0xff1d2031) ,
          color: Colors.blueGrey
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(child: Container(
              padding: EdgeInsets.only(top: 30,left: 8,right: 8,bottom: 8),
              color: Colors.white.withOpacity(0.5),
              child: MarkDownku(
                teksData: teks,
              ),
            )),
            NoHalaman(pages: pages,itemOfPages:bab5_4,bab: 'Energi',context: context)
          ],
        ),
      ),

    );
  }
}

const String teks = '''
### Kualitas keputusan adalah seperti serangan yang tepat waktu dari seekor falcon yang memungkinkannya untuk menyerang dan menghancurkan mangsanya.
### Oleh karena itu, pejuang yang baik akan menakutkan dalam serangannya, dan cepat dalam pengambilan keputusannya.
### Energi bisa dibandingkan dengan membengkokkan busur panah; keputusan, dengan melepaskan pelatuknya.
### Di tengah kerusuhan dan kegemparan pertempuran, mungkin terlihat kekacauan namun sebenarnya tidak ada kekacauan sama sekali; di tengah kebingungan dan kekacauan, formasi kamu mungkin tanpa kepala atau ekor, namun itu akan tahan terhadap kekalahan.
### Kekacauan yang disimulasikan mengasumsikan disiplin yang
''';
