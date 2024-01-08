import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:tsunzu/shared/menu.dart';
import 'package:tsunzu/shared/markdown_ku.dart';

import '../shared/no_halaman.dart';
import 'pages.dart';

class BabLima6 extends StatelessWidget {
  const BabLima6({super.key});

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
            NoHalaman(pages: pages,itemOfPages:bab5_6,bab: 'Energi',context: context)
          ],
        ),
      ),

    );
  }
}

const String teks = '''
### terpilih, dia menanti-nantikan musuh.
### Prajurit yang cerdik memperhatikan efek dari energi yang digabungkan, dan tidak memerlukan terlalu banyak dari individu. Oleh karena itu, dia memiliki kemampuan untuk memilih orang-orang yang tepat dan memanfaatkan energi yang digabungkan.
### Ketika dia memanfaatkan energi yang digabungkan, para prajuritnya menjadi seperti kayu gelinding atau batu. Karena adalah sifat dari kayu atau batu untuk tetap diam di tanah datar, dan bergerak saat berada di lereng; jika berbentuk empat sudut, akan berhenti, tetapi jika berbentuk bulat, akan bergulir ke bawah.
### Dengan demikian, energi yang dikembangkan oleh para pejuang yang baik adalah seperti momentum dari batu bulat yang bergulir turun dari gunung yang tinggi ribuan kaki. 

''';
