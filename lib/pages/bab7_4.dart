import 'package:flutter/material.dart';
import 'package:tsunzu/shared/markdown_ku.dart';

import '../shared/no_halaman.dart';
import 'pages.dart';

class BabTujuh4 extends StatelessWidget {
  const BabTujuh4({super.key});

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
            //NoHalaman(pages: pages,itemOfPages:bab7_4,bab: 'Manuver',context: context)
          ],
        ),
      ),

    );
  }
}

const String teks = '''
### dalam perjalanan kecuali kita akrab dengan kondisi medan - gunung dan hutannya, jurang dan tebing-tebingnya, rawa dan lumpurnya.
### Kita tidak akan dapat memanfaatkan keuntungan alam secara optimal kecuali kita menggunakan pemandu lokal.
### Dalam perang, berlatihlah menyembunyikan niatmu, dan kamu akan berhasil.
### Apakah kamu akan mengumpulkan atau membagi pasukan harus diputuskan berdasarkan situasi yang sedang terjadi.
### Biarkan kecepatanmu seperti angin, dan kekompakan seperti hutan.
### Dalam perampokan dan penjarahan, bertindaklah seperti api dan dalam keteguhan seperti gunung.
### Biarkan rencanamu tetap gelap dan tak terlihat seperti malam, dan saat kamu bergerak, jatuh seperti petir.

''';
