import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:tsunzu/shared/menu.dart';
import 'package:tsunzu/shared/markdown_ku.dart';

import '../shared/no_halaman.dart';
import 'pages.dart';

class BabLima5 extends StatelessWidget {
  const BabLima5({super.key});

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
            NoHalaman(pages: pages,itemOfPages:bab5_5,bab: 'Energi',context: context)
          ],
        ),
      ),

    );
  }
}

const String teks = '''
### sempurna, ketakutan yang disimulasikan mengasumsikan keberanian; kelemahan yang disimulasikan mengasumsikan kekuatan.
### Menyembunyikan ketertiban di balik tirai kekacauan hanyalah masalah subdivisi; menyembunyikan keberanian di balik tampilan penakutan mengasumsikan adanya energi yang terpendam; menyamarkan kekuatan dengan kelemahan dapat dicapai melalui taktik disposisi.
### Dengan demikian, seseorang yang mahir dalam membuat musuh bergerak terus-menerus menjaga penampilan yang menyesatkan, sesuai dengan yang akan dilakukan musuh. Dia mengorbankan sesuatu, agar musuh dapat meraihnya.
### Dengan menyiapkan umpan, dia membuat musuh terus bergerak; kemudian dengan sekelompok orang

''';
