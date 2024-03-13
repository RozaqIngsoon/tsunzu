import 'package:flutter/material.dart';
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
            // NoHalaman(pages: pages,itemOfPages:bab10_7,bab: 'Medan Pertempuran',context: context)
          ],
        ),
      ),

    );
  }
}

const String teks = '''
### akan kalah dalam pertempuran.
### Jika pertempuran pasti akan menghasilkan kemenangan, maka kamu sebaiknya bertempur, meskipun penguasa melarangnya; namun, jika pertempuran tidak akan menghasilkan kemenangan, kamu seharusnya tidak bertempur, bahkan jika penguasa memerintahkannya.
### Jenderal yang maju tanpa merindukan ketenaran dan mundur tanpa takut akan kehormatan yang tercemar, yang hanya memikirkan untuk melindungi negaranya dan memberikan pelayanan yang baik bagi penguasanya, adalah permata bagi kerajaan.
### Perlakukan tentaramu seperti anak-anakmu, dan mereka akan mengikutimu ke lembah terdalam; pandanglah mereka sebagai putra-putramu yang tercinta, dan mereka akan tetap setia kepadamu bahkan hingga kematian.
### Namun, jika kamu bersikap lunak tetapi 
''';
