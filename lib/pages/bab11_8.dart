import 'package:flutter/material.dart';
import 'package:tsunzu/shared/markdown_ku.dart';

import '../shared/no_halaman.dart';
import 'pages.dart';

class BabSebelas8 extends StatelessWidget {
  const BabSebelas8({super.key});

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
            NoHalaman(pages: pages,itemOfPages:bab11_8,bab: 'Sembilan Situasi',context: context)
          ],
        ),
      ),

    );
  }
}

const String teks = '''
### diumpamakan seperti SHUAI-JAN. SHUAI-JAN merupakan seekor ular yang ditemukan di pegunungan Ch‘ang. Seranglah kepala ular itu, dan kamu akan diserang oleh ekornya; seranglah ekornya, dan kamu akan diserang oleh kepala ularnya; seranglah bagian tengahnya, dan kamu akan diserang oleh kepala dan ekornya.
### Seorang jenderal yang cakap harus mampu bergerak seperti SHUAI-JAN, menyerang dari kepala, ekor, atau tengah, tergantung pada situasi. Jika musuhmu kuat di depan, seranglah dari belakang. Jika musuhmu kuat di belakang, seranglah dari depan. Jangan pernah menyerang musuh dengan cara yang dia duga.
### Ini menunjukkan bahwa dalam perang, strategi yang lebih kompleks dan koordinasi yang baik antara pasukan jauh lebih penting daripada hanya mengandalkan peralatan atau teknologi perang semata.

''';