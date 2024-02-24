import 'package:flutter/material.dart';
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
### lawan-lawannya merasa takut. Dengan demikian, ia mampu merebut kota-kota mereka dan menggulingkan kerajaan-kerajaan mereka.
### Berikan penghargaan tanpa memperhatikan aturan, berikan perintah tanpa memperhatikan pengaturan sebelumnya; dan kamu akan dapat mengendalikan seluruh pasukan seolah-olah kamu hanya berurusan dengan satu orang saja.
### Hadapkan pasukanmu dengan tindakannya sendiri; jangan pernah biarkan mereka tahu rencanamu. Saat keadaan baik, perlihatkan itu kepada mereka; tapi jangan beri tahu mereka apa pun saat keadaan sulit.
### Letakkan pasukanmu dalam bahaya maut, dan mereka akan bertahan; jatuhkan mereka ke dalam kesulitan yang putus asa, dan mereka akan selamat.

''';