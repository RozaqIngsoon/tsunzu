import 'package:flutter/material.dart';
import 'package:tsunzu/shared/menu.dart';
import 'package:tsunzu/shared/markdown_ku.dart';

import '../shared/no_halaman.dart';
import 'pages.dart';

class BabDua1 extends StatelessWidget {
  const BabDua1({super.key});

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
            NoHalaman(pages: pages,itemOfPages:bab2_1,bab: 'Peperangan',)
          ],
        ),
      ),
      floatingActionButton: menu(context),
      floatingActionButtonLocation: FloatingActionButtonLocation.miniEndTop,
    );
  }
}

const String teks = '''
## Bab 2 : PEPERANGAN
### Dalam operasi perang, di mana ada seribu kendaraan cepat di medan perang, seribu kendaraan berat, dan seratus ribu prajurit berlapis baja, dengan persediaan cukup untuk mengangkut mereka seribu LI (1li = 500m), pengeluaran di tenda dan di garis depan, termasuk hiburan tamu, barang-barang kecil seperti lem dan cat, serta jumlah yang dihabiskan untuk kendaraan dan baju besi, akan mencapai total seribu ons perak per hari. Begitulah biaya untuk mengumpulkan pasukan 100.000 orang.
### Ketika Anda terlibat dalam pertempuran nyata, jika kemenangan tak kunjung datang, maka senjata pasukan akan tumpul dan semangat mereka akan meredup. Jika Anda mengepung sebuah kota, Anda akan menghabiskan kekuatan Anda.
''';
