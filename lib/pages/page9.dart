import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';

import '../shared/no_halaman.dart';
import 'pages.dart';

class Page9 extends StatelessWidget {
  const Page9({super.key});

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
              child: Markdown(
                data: konten1,
              ),
            )),
            NoHalaman(pages: pages,itemOfPages:page9,bab: 'Peperangan',)
          ],
        ),
      ),
    );
  }
}

const String konten1 = '''
### Ini disebut dengan memanfaatkan musuh yang ditaklukkan untuk memperkuat kekuatan sendiri.
### Dalam perang, maka tujuan utama Anda haruslah kemenangan, bukan kampanye yang berkepanjangan.
### Dengan demikian dapat diketahui bahwa pemimpin pasukan adalah hakim atas nasib rakyat, orang yang menentukan apakah negara akan dalam keadaan damai atau dalam bahaya.

''';
