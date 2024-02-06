import 'package:flutter/material.dart';
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
              padding: EdgeInsets.only(top: 25),
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
### 
### Jika para prajurit dihukum sebelum mereka merasa terikat denganmu, mereka mungkin tidak akan patuh; dan, jika mereka tidak patuh, mereka akan menjadi tidak berguna. Sebaliknya, jika para prajurit sudah memiliki keterikatan denganmu dan tidak dikenakan hukuman, mereka juga dapat menjadi tidak efektif.
### Oleh karena itu, penting untuk memperlakukan prajurit dengan kemanusiaan dari awal, tetapi tetap menjaga kendali melalui penerapan disiplin yang ketat. Pendekatan ini merupakan jalan yang pasti menuju kemenangan.
### Dalam melatih prajurit, penting untuk konsisten dalam menegakkan perintah-perintah. Jika ini dilakukan, tentara akan memiliki tingkat disiplin yang baik. Sebaliknya, jika tidak konsisten, tingkat disiplin dapat menjadi buruk.

''';
