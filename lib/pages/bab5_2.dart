import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:tsunzu/shared/menu.dart';
import 'package:tsunzu/shared/markdown_ku.dart';

import '../shared/no_halaman.dart';
import 'pages.dart';

class BabLima2 extends StatelessWidget {
  const BabLima2({super.key});

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
            NoHalaman(pages: pages,itemOfPages:bab5_2,bab: 'Energi',context: context)
          ],
        ),
      ),

    );
  }
}

const String teks = '''
### langsung dapat digunakan untuk memulai pertempuran, tetapi metode tidak langsung akan diperlukan untuk meraih kemenangan.
### Taktik tidak langsung, jika diterapkan dengan efisien, tak ada habisnya seperti langit dan bumi, tak berhenti seperti aliran sungai dan anak sungai; seperti matahari dan bulan, mereka berakhir hanya untuk dimulai kembali; seperti empat musim, mereka berlalu untuk kembali lagi.
### Tidak lebih dari lima nada musik, namun kombinasi dari lima ini menghasilkan lebih banyak melodi daripada yang bisa pernah didengar.
### Tidak ada lebih dari lima warna dasar (biru, kuning, merah, putih, dan hitam), namun dalam kombinasi mereka menghasilkan lebih banyak nuansa warna daripada yang bisa pernah terlihat.
''';
