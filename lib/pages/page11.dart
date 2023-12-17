import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';

import '../shared/no_halaman.dart';
import 'pages.dart';

class Page11 extends StatelessWidget {
  const Page11({super.key});

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
              padding: EdgeInsets.only(top: 30,left: 8,right: 8,bottom: 8),
              color: Colors.white.withOpacity(0.5),
              child: Markdown(
                data: konten1,
              ),
            )),
            NoHalaman(pages: pages,itemOfPages:page11,bab: 'Strategi',)
          ],
        ),
      ),
    );
  }
}

const String konten1 = '''
## Bab 3 : STRATEGI
### Dalam seni perang, yang terbaik dari semuanya adalah merebut negara musuh secara utuh dan tak rusak; menghancurkannya bukanlah pilihan yang terbaik. Demikian juga, lebih baik merebut pasukan secara utuh daripada menghancurkannya, merebut resimen, pasukan kecil, atau kompi secara utuh.
### Oleh karena itu, berperang dan menaklukkan dalam semua pertempuran bukanlah keunggulan tertinggi; keunggulan tertinggi terletak pada meruntuhkan perlawanan musuh tanpa harus bertempur.
### Dengan demikian, bentuk tertinggi kepemimpinan jenderal adalah menggagalkan rencana musuh; yang terbaik selanjutnya adalah mencegah penyatuan pasukan musuh; yang selanjutnya adalah menyerang pasukan musuh di medan; dan kebijakan terburuk dari semuanya adalah mengepung kota berdinding.
### Aturan yang ada adalah, jangan mengepung kota berdinding jika memungkinkan untuk dihindari. Persiapan perisai dinding, tempat perlindungan bergerak, dan berbagai alat-alat perang akan memakan waktu tiga bulan penuh; dan menumpuk gundukan-gundukan di depan dinding akan memakan waktu tiga bulan lagi.
### Jenderal yang tidak mampu mengendalikan kemarahannya akan memerintahkan pasukannya menyerang seperti semut yang berkerumun, dengan akibat bahwa sepertiga pasukannya tewas, sementara kota masih tetap tidak terambil. Begitulah dampak buruk dari pengepungan.

''';
