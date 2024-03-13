import 'package:flutter/material.dart';
import 'package:tsunzu/shared/markdown_ku.dart';

import '../shared/no_halaman.dart';
import 'pages.dart';

class BabEnam5 extends StatelessWidget {
  const BabEnam5({super.key});

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
            //NoHalaman(pages: pages,itemOfPages:bab6_5,bab: 'Titik Lemah & Kuat',context: context)
          ],
        ),
      ),

    );
  }
}

const String teks = '''
### banyak melawan sedikit musuh.
### Dan jika kita mampu menyerang pasukan yang lebih lemah dengan pasukan yang lebih kuat seperti ini, lawan-lawan kita akan dalam keadaan sulit.
### Lokasi tempat kita berencana untuk berperang sebaiknya tidak diketahui musuh. Sehingga, mereka akan bersiap-siap menghadapi kemungkinan serangan dari beberapa titik berbeda. Dengan demikian, kekuatan musuh akan tersebar di banyak arah, dan jumlah mereka di setiap titik akan menjadi sedikit.
### Karena jika musuh memperkuat depannya, dia akan melemahkan belakangnya; jika dia memperkuat belakangnya, dia akan melemahkan depannya; jika dia memperkuat kiri, dia akan melemahkan kanannya; jika dia memperkuat kanannya, dia akan melemahkan kirinya. Jika dia
''';
