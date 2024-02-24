import 'package:flutter/material.dart';
import 'package:tsunzu/shared/markdown_ku.dart';

import '../shared/no_halaman.dart';
import 'pages.dart';

class DaftarIstilah extends StatelessWidget {
  const DaftarIstilah({super.key});

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
            NoHalaman(pages: pages,itemOfPages:daftarIstilah,bab: 'Daftar Istilah',context: context)
          ],
        ),
      ),

    );
  }
}

const String teks = '''
## GLOSSARY
---
### * Deviasi
#### Deviasi (menyimpang, penyimpangan) disini merujuk pada kemampuan untuk menyesuaikan diri, mengubah rencana, atau mengatasi situasi yang tidak sesuai dengan rencana awal.
### * Disposisi 
#### Dalam strategi militer, disposisi mencakup pemilihan dan penempatan pertahanan, penggunaan medan, dan penyesuaian taktis berdasarkan pergerakan musuh. Pemahaman yang baik tentang disposisi memungkinkan seorang komandan untuk merencanakan dan mengkoordinasikan serangan atau pertahanan dengan lebih baik. Disposisi melibatkan pengorganisasian dan penempatan pasukan di lapangan perang, termasuk posisi infanteri, kavaleri, artileri, serta elemen-elemen pendukung seperti logistik dan komunikasi.
### * Falcon 
#### Burung falcon (Alap-alap) merujuk pada sekelompok burung pemangsa dalam keluarga Falconidae. Falcon terkenal karena kecepatan dan keterampilan berburu mereka. Beberapa spesies falcon digunakan dalam olahraga berburu dan disebut sebagai burung pemangsa yang terlatih.
### * Konstelasi Sieve, Wall, Wing, dan Cross-bar di Bulan 
#### Sieve, Wall, Wing, dan Cross-bar adalah istilah yang digunakan untuk mendeskripsikan beberapa formasi geologi yang menonjol di permukaan Bulan. Berikut penjelasannya:
1) #### Sieve (saringan) adalah area di permukaan Bulan yang dipenuhi dengan kawah kecil dan berdekatan. Kawah-kawah ini terkesan seperti lubang pada saringan. Sieve sering ditemukan di dataran tinggi Bulan.
2) #### Wall (tembok) adalah struktur yang panjang dan menjulang di permukaan Bulan. Wall biasanya terbentuk akibat patahan atau retakan di kerak Bulan. Contoh Wall yang terkenal adalah Hadley Rille dan Straight Wall.
3) #### Wing (sayap) adalah struktur yang menonjol dari permukaan Bulan dan menyerupai sayap. Wing biasanya terbentuk akibat aliran lava yang mendingin dan mengeras. Contoh Wing yang terkenal adalah Promontorium Heraclides.
4) #### Cross-bar (palang) adalah struktur yang melintang di atas kawah Bulan. Cross-bar biasanya terbentuk akibat material yang runtuh dari tepi kawah. Contoh Cross-bar yang terkenal adalah di kawah Tycho.
### * Li
#### Li merupakan satuan jarak. 1 li = 500 meter.
### * Picul
#### Picul merujuk pada satuan berat yang digunakan di Tiongkok tradisional. Sebuah picul setara dengan sekitar 133.33 pound atau sekitar 60.48 kilogram. Picul sering digunakan untuk mengukur berat barang dagangan, seperti beras atau rempah-rempah, dalam konteks sejarah perdagangan Tiongkok.
### * Superstitious
#### Superstitious adalah istilah yang digunakan untuk menggambarkan keyakinan atau sikap terhadap sesuatu yang tidak memiliki dasar ilmiah atau rasional, tetapi masih dipegang teguh oleh sebagian orang karena tradisi, kepercayaan turun-temurun, atau kebiasaan. Orang yang bersifat superstitious cenderung mempercayai bahwa tindakan atau kejadian kecil dapat memiliki pengaruh besar terhadap keberuntungan atau nasib mereka, tanpa adanya bukti yang kuat atau dasar ilmiah yang mendukung keyakinan tersebut.
#### Contoh dari superstitious adalah ketakutan terhadap angka tertentu, melewati di bawah tangga, atau takut akan kucing hitam. Meskipun tidak ada bukti ilmiah yang mendukung bahwa hal-hal tersebut benar-benar membawa keberuntungan atau malapetaka, beberapa orang masih memegang keyakinan ini dan menghindari tindakan atau objek yang dianggap membawa sial.
#### Superstisi juga bisa muncul dalam berbagai bentuk di berbagai budaya, dan sering kali dapat berubah seiring waktu. Meskipun banyak orang mungkin menyadari bahwa keyakinan superstitious mereka tidak didukung oleh fakta ilmiah, mereka tetap mempertahankannya karena merupakan bagian dari warisan budaya atau tradisi yang dipegang oleh masyarakat.
### * Yueh
#### Tentara Yueh adalah tentara yang sangat kuat dan bijaksana. Sun Tzu mencatat bahwa Tentara Yueh adalah contoh yang baik dalam penerapan prinsip-prinsip strategis dan taktis yang dijelaskan dalam karyanya.
''';