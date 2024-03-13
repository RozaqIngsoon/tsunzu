import 'package:flutter/material.dart';
import 'package:tsunzu/shared/markdown_ku.dart';

import '../shared/no_halaman.dart';
import 'pages.dart';

class BabSebelas14 extends StatelessWidget {
  const BabSebelas14({super.key});

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
            // NoHalaman(pages: pages,itemOfPages:bab11_14,bab: 'Sembilan Situasi',context: context)
          ],
        ),
      ),

    );
  }
}

const String teks = '''
### pasukan dalam perjalanan kecuali kita terbiasa dengan wajah negara tersebut - gunung dan hutan, jebakan dan tebing, rawa dan lumpurannya. Kita tidak akan mampu mengambil keuntungan dari keadaan alam kecuali kita menggunakan pemandu lokal.
### Mengabaikan salah satu dari empat atau lima prinsip berikut tidak sesuai bagi seorang raja yang berperang.
### Ketika seorang raja yang berperang menyerang negara yang kuat, kepandaiannya terlihat dalam mencegah konsentrasi pasukan musuh. Dia menakut-nakuti lawannya, dan sekutu-sekutunya dicegah untuk bergabung melawannya.
### Oleh karena itu, ia tidak berusaha untuk bersekutu dengan siapa saja, dan juga tidak menguatkan kekuatan negara-negara lain. Ia menjalankan rencana-rencananya sendiri dengan merahasiakannya, sehingga membuat 

''';