import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:tsunzu/shared/menu.dart';
import 'package:tsunzu/shared/markdown_ku.dart';

import '../shared/no_halaman.dart';
import 'pages.dart';

class BabSebelas14 extends StatelessWidget {
  const BabSebelas14({super.key});

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
            NoHalaman(pages: pages,itemOfPages:bab11_14,bab: 'Sembilan Situasi',context: context)
          ],
        ),
      ),

    );
  }
}

const String teks = '''
### Karena sifat alami seorang prajurit adalah untuk memberikan perlawanan keras ketika ia dikelilingi, berjuang keras ketika ia tidak memiliki pilihan, dan taat dengan cepat ketika ia berada dalam bahaya.
### Kita tidak dapat membentuk aliansi dengan raja-raja tetangga sampai kita akrab dengan maksud mereka. Kita tidak pantas memimpin sebuah pasukan dalam perjalanan kecuali kita terbiasa dengan wajah negara tersebut - gunung dan hutan, jebakan dan tebing, rawa dan lumpurannya. Kita tidak akan mampu mengambil keuntungan dari keadaan alam kecuali kita menggunakan pemandu lokal.
### Mengabaikan salah satu dari empat atau lima prinsip berikut tidak sesuai bagi seorang raja yang berperang.
### Ketika seorang raja yang berperang menyerang negara yang kuat, kepandaiannya terlihat dalam

''';