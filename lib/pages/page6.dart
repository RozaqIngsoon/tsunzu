import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';

import '../shared/no_halaman.dart';
import 'pages.dart';

class Page6 extends StatelessWidget {
  const Page6({super.key});

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
            NoHalaman(pages: pages,itemOfPages:page6,bab: 'Peperangan',)
          ],
        ),
      ),
    );
  }
}

const String konten1 = '''
## Bab 2 : PEPERANGAN
### Dalam operasi perang, di mana ada seribu kereta cepat di medan perang, seribu kereta berat, dan seratus ribu prajurit berlapis baja, dengan persediaan cukup untuk mengangkut mereka seribu LI, pengeluaran di rumah dan di garis depan, termasuk hiburan tamu, barang-barang kecil seperti lem dan cat, serta jumlah yang dihabiskan untuk kereta dan baju besi, akan mencapai total seribu ons perak per hari. Begitulah biaya untuk mengumpulkan pasukan 100.000 orang.
### Ketika Anda terlibat dalam pertempuran nyata, jika kemenangan tak kunjung datang, maka senjata pasukan akan tumpul dan semangat mereka akan meredup. Jika Anda mengepung sebuah kota, Anda akan menghabiskan kekuatan Anda.
### Selanjutnya, jika kampanye berlangsung lama, sumber daya Negara tidak akan sebanding dengan beban yang ditanggung.
### Sekarang, ketika senjata Anda tumpul, semangat Anda meredup, kekuatan Anda habis, dan harta Anda telah dikeluarkan, pemimpin lain akan muncul untuk memanfaatkan situasi terdesak Anda. Pada saat itu, tidak ada seorang pun, seberapa bijak pun, yang akan dapat menghindari konsekuensi yang harus terjadi.

''';
