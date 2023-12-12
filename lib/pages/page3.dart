import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';

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
              padding: EdgeInsets.only(top: 35,left: 8,right: 8,bottom: 8),
              color: Colors.white.withOpacity(0.5),
              child: MarkdownBody(
                data: konten1,
                shrinkWrap: false,
              ),
            )),
            Container(
              height: 30,
              color: Color(0xff1d2031),
              child: Row(
                children: [
                  Text(' Perencanaan', style: TextStyle(color: Colors.yellow,fontStyle: FontStyle.italic),),
                  Spacer(),
                  Text('01 ', style: TextStyle(color: Colors.yellow,fontStyle: FontStyle.italic),)
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

const String konten1 = '''
## Bab 1 : PERENCANAAN
Seni perang memiliki arti penting yang vital bagi negara.
Perang adalah masalah hidup dan mati, jalan menuju keselamatan atau kehancuran. Oleh karena itu, ini adalah subjek penyelidikan yang tidak boleh diabaikan dengan alasan apa pun.
Seni perang diatur oleh lima faktor konstan, yang harus dipertimbangkan dalam pertimbangan seseorang, ketika berusaha untuk menentukan kondisi yang berlaku di medan laga. Yaitu: (i) Hukum Moral; (ii) Langit; (iii) Bumi; (iv) Komandan; (v) Metode dan disiplin.
Hukum MORAL menyebabkan pasukan sepenuhnya selaras dengan pemimpin mereka, sehingga mereka akan mengikutinya tanpa memedulikan nyawa mereka, tanpa tergoyahkan oleh bahaya apa pun.
LANGIT mengartikan malam dan siang, dingin dan panas, waktu dan musim.
BUMI mencakup jarak, besar dan kecil; bahaya dan keamanan; tanah terbuka dan celah sempit; peluang hidup dan mati.
KOMANDAN melambangkan pengutamaan kebijaksanaan, ketulusan, kebaikan hati, keberanian, dan ketegasan.
Dengan METODE DAN DISIPLIN dimaksudkan pengaturan tentara dalam subdivisi yang sesuai, tingkatan pangkat di antara para perwira, pemeliharaan jalan-jalan agar pasokan dapat mencapai tentara, dan pengendalian pengeluaran militer.
Lima prinsip ini harus menjadi pengetahuan dasar setiap jenderal; siapa yang mengenalinya akan meraih kemenangan; siapa yang tidak mengenalinya akan gagal. Oleh karena itu, dalam pertimbangan Anda, ketika berusaha menentukan kondisi militer, gunakan prinsip tersebut sebagai dasar perbandingan, seperti ini:
a)	Di antara kedua pemimpin, siapakah yang memiliki pemahaman tentang Hukum Moral?
b)	Di antara kedua jenderal, siapakah yang memiliki kemampuan paling besar?
c)	Dengan siapa terletak keuntungan yang berasal dari Langit dan Bumi?
''';
