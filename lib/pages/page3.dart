import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';

import '../shared/no_halaman.dart';
import 'pages.dart';

class Page3 extends StatelessWidget {
  const Page3({super.key});

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
            NoHalaman(pages: pages,itemOfPages:page3,bab: 'Perencanaan',)
          ],
        ),
      ),
    );
  }
}

const String konten1 = '''
### KOMANDAN melambangkan pengutamaan kebijaksanaan, ketulusan, kebaikan hati, keberanian, dan ketegasan.
### Dengan METODE DAN DISIPLIN dimaksudkan pengaturan tentara dalam subdivisi yang sesuai, tingkatan pangkat di antara para perwira, pemeliharaan jalan-jalan agar pasokan dapat mencapai tentara, dan pengendalian pengeluaran militer.
### Lima prinsip ini harus menjadi pengetahuan dasar setiap jenderal; siapa yang mengenalinya akan meraih kemenangan; siapa yang tidak mengenalinya akan gagal. Oleh karena itu, dalam pertimbangan Anda, ketika berusaha menentukan kondisi militer, gunakan prinsip tersebut sebagai dasar perbandingan, seperti ini:
### a).	Di antara kedua pemimpin, siapakah yang memiliki pemahaman tentang Hukum Moral?
### b).	Di antara kedua jenderal, siapakah yang memiliki kemampuan paling besar?
### c).	Dengan siapa terletak keuntungan yang berasal dari Langit dan Bumi?
### d).	Di pihak mana disiplin ditegakkan dengan paling ketat?
### e).	Pasukan manakah yang lebih kuat?
### f).	Di pihak mana para perwira dan prajurit dilatih dengan lebih baik?
### g).	Di dalam pasukan manakah terdapat konsistensi yang lebih besar baik dalam pemberian imbalan maupun hukuman?
''';
