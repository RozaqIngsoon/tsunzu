import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:tsunzu/shared/menu.dart';
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
            NoHalaman(pages: pages,itemOfPages:bab6_5,bab: 'Titik Lemah & Kuat',context: context)
          ],
        ),
      ),

    );
  }
}

const String teks = '''
### berperang tidak boleh diketahui; karena jika demikian, musuh akan harus bersiap-siap melawan kemungkinan serangan di beberapa titik berbeda; dan kekuatan-kekuatannya tersebar ke banyak arah, jumlah yang akan kita hadapi di setiap titik akan menjadi sedikit.
### Karena jika musuh memperkuat depannya, dia akan melemahkan belakangnya; jika dia memperkuat belakangnya, dia akan melemahkan depannya; jika dia memperkuat kiri, dia akan melemahkan kanannya; jika dia memperkuat kanannya, dia akan melemahkan kirinya. Jika dia mengirimkan bala bantuan di mana-mana, dia akan lemah di mana-mana.
### Kekurangan jumlah berasal dari harus bersiap-siap menghadapi kemungkinan serangan; kekuatan jumlah berasal dari memaksa lawan kita untuk melakukan persiapan

''';
