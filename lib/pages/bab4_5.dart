import 'package:flutter/material.dart';
import 'package:tsunzu/shared/markdown_ku.dart';

import '../shared/no_halaman.dart';
import 'pages.dart';

class BabEmpat5 extends StatelessWidget {
  const BabEmpat5({super.key});

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
            NoHalaman(pages: pages,itemOfPages:bab4_5,bab: 'Taktik',context: context)
          ],
        ),
      ),

    );
  }
}

const String teks = '''
### Pasukan yang menang melawan pasukan yang kalah, seperti memberi beban satu pound di satu sisi timbangan yang berhadapan dengan satu butir biji.
### Serangan pasukan penakluk seperti air yang membanjiri ke dalam jurang yang sangat dalam.

''';
