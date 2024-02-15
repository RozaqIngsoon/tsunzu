import 'package:flutter/material.dart';
import 'package:tsunzu/shared/markdown_ku.dart';

import '../shared/no_halaman.dart';
import 'pages.dart';

class BabSebelas6 extends StatelessWidget {
  const BabSebelas6({super.key});

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
            NoHalaman(pages: pages,itemOfPages:bab11_6,bab: 'Sembilan Situasi',context: context)
          ],
        ),
      ),

    );
  }
}

const String teks = '''
### Tempatkan pasukanmu di posisi di mana peluang untuk melarikan diri sangat sulit, sehingga mereka akan lebih memilih menghadapi kematian. Jika mereka bersedia menghadapi risiko tersebut, tidak ada yang tidak dapat dicapai. Para perwira dan prajurit akan bersatu untuk memberikan yang terbaik dari kekuatan mereka.
### Para prajurit, ketika berada dalam keadaan putus asa, kehilangan rasa takut. Jika tidak ada tempat perlindungan, mereka akan bertahan. Jika berada di wilayah musuh, mereka akan menunjukkan ketegaran. Jika tidak ada jalan lain, mereka akan bertempur dengan gigih.
### Dengan demikian, tanpa menunggu untuk diatur, para prajurit akan selalu waspada; tanpa menunggu untuk diminta, mereka akan menjalankan kehendakmu; tanpa batasan mereka akan setia; tanpa perintah, mereka 


''';