import 'package:flutter/material.dart';

import '../shared/markdown_ku.dart';
import '../shared/no_halaman.dart';
import 'pages.dart';

class BabTiga6 extends StatelessWidget {
  const BabTiga6({super.key});

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
              padding: EdgeInsets.only(top: 30),
              color: Colors.white.withOpacity(0.5),
              child: MarkDownku(teksData:teks ,)
            )),
            NoHalaman(pages: pages,itemOfPages:bab3_6,bab: 'Strategi',context: context)
          ],
        ),
      ),

    );
  }
}

const String teks = '''

5) ### Dia akan menang bila memiliki kemampuan militer dan tidak diintervensi oleh penguasa.
### Maka ada pepatah: Jika kamu mengenal musuh dan mengenal diri sendiri, kamu tidak perlu takut terhadap hasil dari seratus pertempuran. Jika kamu mengenal diri sendiri tetapi tidak mengenal musuh, untuk setiap kemenangan yang didapat kamu juga akan menderita kekalahan. Jika kamu tidak mengenal baik musuh maupun diri sendiri, kamu akan tunduk dalam setiap pertempuran.
''';
