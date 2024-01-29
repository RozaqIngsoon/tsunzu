import 'package:flutter/material.dart';
import 'package:tsunzu/shared/markdown_ku.dart';

import '../shared/no_halaman.dart';
import 'pages.dart';

class BabTujuh5 extends StatelessWidget {
  const BabTujuh5({super.key});

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
            NoHalaman(pages: pages,itemOfPages:bab7_5,bab: 'Manuver',context: context)
          ],
        ),
      ),

    );
  }
}

const String teks = '''
### Saat merampok pedesaan, bagi hasil rampasan di antara prajuritmu; saat merebut wilayah baru, alokasikan sebagian untuk kepentingan pasukan.
### Renungkan dan pertimbangkan dengan baik sebelum kamu melakukan langkah.
### Seseorang yang telah mempelajari tipu muslihat deviasi* akan menaklukkan musuhnya. Begitulah seni bermanuver.
### Buku Manajemen Angkatan Bersenjata mengatakan: Di medan perang, kata-kata yang diucapkan tidak cukup jauh untuk didengar: maka buatlah alat-alat seperti gong dan drum. Dan objek-objek biasa tidak
''';
