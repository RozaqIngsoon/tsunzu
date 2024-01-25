import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:tsunzu/shared/menu.dart';
import 'package:tsunzu/shared/markdown_ku.dart';

import '../shared/no_halaman.dart';
import 'pages.dart';

class BabSembilan10 extends StatelessWidget {
  const BabSembilan10({super.key});

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
            NoHalaman(pages: pages,itemOfPages:bab9_10,bab: 'Pergerakan Pasukan',context: context)
          ],
        ),
      ),

    );
  }
}

const String teks = '''
### langkah-langkah berjaga-jaga dan meremehkan lawan-lawan mereka pasti akan ditangkap oleh mereka.
### Jika para prajurit dihukum sebelum mereka memiliki rasa keterikatan dengan kamu, mereka tidak akan tunduk; dan, jika mereka tidak tunduk, maka mereka akan menjadi tidak berguna. Namun, jika ketika para prajurit sudah memiliki keterikatan dengan kamu, hukuman-hukuman tidak diberlakukan, mereka juga akan menjadi tidak berguna.
### Oleh karena itu, prajurit harus diperlakukan dengan kemanusiaan pada awalnya, tetapi tetap dalam kendali melalui disiplin yang ketat. Ini adalah jalan pasti menuju kemenangan.
### PP.	Jika dalam melatih prajurit, perintah-perintah secara konsisten ditegakkan, tentara akan memiliki disiplin yang baik; jika tidak,

''';
