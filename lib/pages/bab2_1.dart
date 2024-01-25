import 'package:flutter/material.dart';
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
            NoHalaman(pages: pages,itemOfPages:bab2_1,bab: 'Peperangan',context: context)
          ],
        ),
      ),

    );
  }
}

const String teks = '''
## Bab 2 : PEPERANGAN
### Dalam operasi perang dengan seribu kendaraan cepat, seribu kendaraan berat, dan seratus ribu prajurit berlapis baja, dengan persediaan yang cukup untuk mengangkut mereka seribu LI (1 li = 500m), pengeluaran di tenda dan di garis depan, termasuk hiburan tamu, barang-barang kecil seperti lem dan cat, serta jumlah yang dihabiskan untuk kendaraan dan baju besi, akan mencapai total seribu ons perak per hari. Begitulah biaya untuk mengumpulkan pasukan 100.000 orang.
### Ketika terlibat dalam pertempuran sebenarnya, jika kemenangan masih sulit dicapai, senjata pasukan akan menjadi tumpul dan semangat mereka akan merosot. Begitu juga, ketika mengepung sebuah kota, akan menghabiskan kekuatan yang dimiliki. Jika kampanye berlangsung lama, 

''';
