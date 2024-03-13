import 'package:flutter/material.dart';
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
            //NoHalaman(pages: pages,itemOfPages:bab5_2,bab: 'Energi',context: context)
          ],
        ),
      ),

    );
  }
}

const String teks = '''
### meraih kemenangan, kamu perlu menerapkan metode tidak langsung.
### Taktik tidak langsung, jika diterapkan dengan efisien, akan terus berlanjut seperti langit dan bumi, tak pernah berhenti seperti aliran sungai dan anak sungai; seperti matahari dan bulan, mereka berakhir hanya untuk dimulai kembali; seperti empat musim, mereka berlalu untuk kembali lagi.
### Hanya ada lima nada musik, tetapi kombinasi dari lima ini menghasilkan lebih banyak melodi daripada yang pernah bisa didengar.
### Hanya ada lima warna dasar, yaitu biru, kuning, merah, putih, dan hitam. Namun, ketika dikombinasikan, mereka menghasilkan lebih banyak nuansa warna daripada yang pernah bisa terlihat.
### Hanya ada lima rasa utama, yaitu asam, pedas, asin, manis, dan pahit. Namun, kombinasi rasa-rasa ini menciptakan
''';
