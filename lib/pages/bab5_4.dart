import 'package:flutter/material.dart';
import 'package:tsunzu/shared/markdown_ku.dart';

import '../shared/no_halaman.dart';
import 'pages.dart';

class BabLima4 extends StatelessWidget {
  const BabLima4({super.key});

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
            NoHalaman(pages: pages,itemOfPages:bab5_4,bab: 'Energi',context: context)
          ],
        ),
      ),

    );
  }
}

const String teks = '''
### Energi bisa dibandingkan dengan membengkokkan busur panah; keputusan, dengan melepaskan pelatuknya.
### Di tengah kerusuhan dan kegemparan pertempuran, meskipun mungkin terlihat kacau, sebenarnya tidak ada kekacauan sama sekali. Di tengah kebingungan dan kekacauan, formasimu mungkin terlihat tanpa kepala atau ekor, namun itu akan tetap tahan terhadap kekalahan.
### Ketika kita membuat kekacauan yang disimulasikan, kita mengasumsikan adanya disiplin yang sempurna; ketika kita menunjukkan ketakutan yang disimulasikan, kita mengasumsikan adanya keberanian; dan ketika kita menampakkan kelemahan yang disimulasikan, kita sebenarnya sedang menunjukkan kekuatan.
### Menyembunyikan ketertiban di balik tirai kekacauan hanyalah masalah membagi-bagi; menyembunyikan keberanian di balik tampilan ketakutan mengasumsikan adanya energi yang terpendam; menyamarkan kekuatan dengan kelemahan dapat dicapai melalui taktik disposisi*.
''';
