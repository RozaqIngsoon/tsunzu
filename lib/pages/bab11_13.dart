import 'package:flutter/material.dart';
import 'package:tsunzu/shared/markdown_ku.dart';

import '../shared/no_halaman.dart';
import 'pages.dart';

class BabSebelas13 extends StatelessWidget {
  const BabSebelas13({super.key});

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
            NoHalaman(pages: pages,itemOfPages:bab11_13,bab: 'Sembilan Situasi',context: context)
          ],
        ),
      ),

    );
  }
}

const String teks = '''
### Oleh karena itu, dalam situasi tumpang tindih, inspirasikan pasukan dengan tujuan bersatu. Di situasi yang mudah, pastikan terdapat hubungan yang erat antara semua bagian dari pasukan.
### Di situasi pertentangan, percepat pasukan. Di situasi terbuka, jaga pertahanan dengan cermat. Di situasi persimpangan jalan, konsolidasikan aliansi.
### Di situasi serius, pastikan aliran pasokan yang berkelanjutan. Di situasi sulit, terus maju di sepanjang jalan.
### Di situasi terkepung, halangi setiap jalan mundur. Di situasi putus asa, beri tahu para prajurit bahwa menyelamatkan nyawa mereka adalah hal yang mustahil.

''';