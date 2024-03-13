import 'package:flutter/material.dart';
import 'package:tsunzu/shared/markdown_ku.dart';

import '../shared/no_halaman.dart';
import 'pages.dart';

class BabTujuh8 extends StatelessWidget {
  const BabTujuh8({super.key});

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
            //NoHalaman(pages: pages,itemOfPages:bab7_8,bab: 'Manuver',context: context)
          ],
        ),
      ),

    );
  }
}

const String teks = '''
### Hindari menelan umpan yang ditawarkan oleh musuh. Jangan mengganggu pasukan yang sedang pulang ke rumah.
### Ketika kamu menyelubungi sebuah pasukan, berikanlah jalan keluar yang bebas. Jangan terlalu mengepung musuh yang putus asa.
''';
