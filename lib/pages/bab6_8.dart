import 'package:flutter/material.dart';
import 'package:tsunzu/shared/markdown_ku.dart';

import '../shared/no_halaman.dart';
import 'pages.dart';

class BabEnam8 extends StatelessWidget {
  const BabEnam8({super.key});

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
              padding: EdgeInsets.only(top: 25),
              color: Colors.white.withOpacity(0.5),
              child: MarkDownku(
                teksData: teks,
              ),
            )),
            NoHalaman(pages: pages,itemOfPages:bab6_8,bab: 'Titik Lemah & Kuat',context: context)
          ],
        ),
      ),

    );
  }
}

const String teks = '''
### oleh siapa pun adalah rencana besar dari mana kemenangan itu muncul.
### Jangan mengulangi taktik yang telah memberimu satu kemenangan, tetapi biarkan metodemu disesuaikan dengan berbagai situasi yang tak terbatas.
### Taktik militer ibarat air; karena air dalam aliran alaminya menjauhi tempat tinggi dan bergerak cepat ke bawah.
### Jadi dalam perang, cara yang tepat adalah menghindari yang kuat dan menyerang yang lemah.
### Air mengikuti jalur alaminya tergantung pada kondisi tanah yang dilaluinya; demikian juga, seorang prajurit mencapai kemenangannya sesuai dengan musuh yang dihadapinya.
### Maka, seperti air yang tidak memiliki bentuk yang tetap, begitu juga dalam peperangan tidak ada kondisi yang tetap.
### Orang-orang yang dapat menyesuaikan 

''';
