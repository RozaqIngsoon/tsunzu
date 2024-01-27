import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:tsunzu/shared/menu.dart';
import 'package:tsunzu/shared/markdown_ku.dart';

import '../shared/no_halaman.dart';
import 'pages.dart';

class BabSepuluh7 extends StatelessWidget {
  const BabSepuluh7({super.key});

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
            NoHalaman(pages: pages,itemOfPages:bab10_7,bab: 'Medan Pertempuran',context: context)
          ],
        ),
      ),

    );
  }
}

const String teks = '''
### bagi seorang jenderal yang hebat.
### Seseorang yang mengetahui hal-hal ini dan dalam pertempuran menerapkan pengetahuannya, akan memenangkan pertempurannya. Seseorang yang tidak mengetahuinya, atau tidak mengamalkannya, pasti akan kalah.
### Jika pertempuran pasti akan menghasilkan kemenangan, maka kamu harus bertempur, meskipun penguasa melarangnya; jika pertempuran tidak akan menghasilkan kemenangan, maka kamu tidak boleh bertempur, bahkan jika penguasa memerintahkannya.
### Jenderal yang maju tanpa merindukan ketenaran dan mundur tanpa takut akan kehormatan yang tercemar, yang hanya memikirkan untuk melindungi negaranya dan memberikan pelayanan yang baik bagi penguasanya, adalah permata kerajaan.
''';
