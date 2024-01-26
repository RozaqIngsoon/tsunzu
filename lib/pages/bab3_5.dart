import 'package:flutter/material.dart';

import '../shared/markdown_ku.dart';
import '../shared/no_halaman.dart';
import 'pages.dart';

class BabTiga5 extends StatelessWidget {
  const BabTiga5({super.key});

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
            NoHalaman(pages: pages,itemOfPages:bab3_5,bab: 'Strategi',context: context)
          ],
        ),
      ),

    );
  }
}

const String teks = '''
2) ### Dengan mencoba mengatur pasukan seperti mengurus kerajaan, terkadang tanpa memahami kondisi yang berlaku dalam pasukan, hal ini menyebabkan kegelisahan dalam pikiran para prajurit.
3) ### Dengan mempekerjakan para perwira pasukannya tanpa membedakan, karena kurang memahami prinsip militer tentang adaptasi terhadap situasi, hal ini mengguncang keyakinan para prajurit.
### Dengan demikian, kita dapat menyadari bahwa ada lima hal penting untuk mencapai kemenangan:
1) ### Dia akan menang bila tahu kapan harus berperang dan kapan tidak perlu berperang.
2) ### Dia akan menang bila tahu bagaimana menghadapi pasukan yang lebih unggul maupun lebih lemah.

''';
