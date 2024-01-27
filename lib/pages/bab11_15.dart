import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:tsunzu/shared/menu.dart';
import 'package:tsunzu/shared/markdown_ku.dart';

import '../shared/no_halaman.dart';
import 'pages.dart';

class BabSebelas15 extends StatelessWidget {
  const BabSebelas15({super.key});

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
            NoHalaman(pages: pages,itemOfPages:bab11_15,bab: 'Sembilan Situasi',context: context)
          ],
        ),
      ),

    );
  }
}

const String teks = '''
### mencegah konsentrasi pasukan musuh. Dia menakut-nakuti lawannya, dan sekutu-sekutunya dicegah untuk bergabung melawannya.
### Oleh karena itu, ia tidak berusaha untuk bersekutu dengan siapa saja, dan juga tidak menguatkan kekuatan negara-negara lain. Ia menjalankan rencana-rencananya sendiri dengan merahasiakannya, sehingga membuat lawan-lawannya merasa takut. Dengan demikian, ia mampu merebut kota-kota mereka dan menggulingkan kerajaan-kerajaan mereka.
### Berikan penghargaan tanpa memperhatikan aturan, berikan perintah tanpa memperhatikan pengaturan sebelumnya; dan kamu akan dapat mengendalikan seluruh pasukan seolah-olah kamu hanya berurusan dengan satu orang saja.
### Hadapkan prajurit kamu dengan perbuatan itu sendiri; jangan pernah

''';