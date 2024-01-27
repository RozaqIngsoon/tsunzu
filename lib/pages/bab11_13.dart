import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:tsunzu/shared/menu.dart';
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
### Oleh karena itu, di medan tumpang tindih, saya akan menginspirasi pasukan saya dengan tujuan bersatu. Di medan mudah, saya akan memastikan ada hubungan yang erat antara semua bagian dari pasukan saya.
### Di medan pertentangan, saya akan mempercepat pasukan belakang saya.
### Di medan terbuka, saya akan menjaga pertahanan saya dengan cermat. Di medan persimpangan jalan, saya akan mengkonsolidasikan aliansi saya.
### Di medan serius, saya akan berusaha memastikan aliran pasokan yang berkelanjutan. Di medan sulit, saya akan terus maju di sepanjang jalan.
### Di medan terkepung, saya akan menghalangi setiap jalan mundur. Di medan putus asa, saya akan memberi tahu para prajurit saya bahwa menyelamatkan nyawa mereka adalah hal yang mustahil.

''';