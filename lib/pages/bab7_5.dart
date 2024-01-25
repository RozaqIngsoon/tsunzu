import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:tsunzu/shared/menu.dart';
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
              padding: EdgeInsets.only(top: 30,left: 8,right: 8,bottom: 8),
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
### bertindak seperti api, dalam keteguhan seperti gunung.
### Biarkan rencana kamu gelap dan tak terlihat seperti malam, dan saat kamu bergerak, jatuh seperti petir.
### Ketika kamu merampok pedesaan, bagilah rampasan di antara para prajurit kamu; ketika kamu merebut wilayah baru, bagilah menjadi alokasi untuk kepentingan pasukan.
### Renungkan dan pertimbangkan dengan baik sebelum kamu melakukan langkah.
### Dia akan menaklukkan yang telah mempelajari tipu daya pengalihan. Itulah seni manuver.
### Buku Manajemen Angkatan Bersenjata mengatakan: Di medan perang, kata-kata yang diucapkan tidak cukup jauh untuk didengar: maka buatlah alat-alat seperti gong dan drum. Dan objek-objek biasa tidak
''';
