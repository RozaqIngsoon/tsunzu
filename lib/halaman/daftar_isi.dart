
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tsunzu/halaman/bab10_0.dart';
import 'package:tsunzu/halaman/bab11_0.dart';
import 'package:tsunzu/halaman/bab12_0.dart';
import 'package:tsunzu/halaman/bab13_0.dart';
import 'package:tsunzu/halaman/bab1_0.dart';
import 'package:tsunzu/halaman/bab2_0.dart';
import 'package:tsunzu/halaman/bab3_0.dart';
import 'package:tsunzu/halaman/bab4_0.dart';
import 'package:tsunzu/halaman/bab5_0.dart';
import 'package:tsunzu/halaman/bab6_0.dart';
import 'package:tsunzu/halaman/bab7_0.dart';
import 'package:tsunzu/halaman/bab8_0.dart';
import 'package:tsunzu/halaman/bab9_0.dart';
import 'package:tsunzu/halaman/cover.dart';
import 'package:tsunzu/halaman/daftar_istilah.dart';
import 'package:tsunzu/halaman/halaman.dart';
import 'package:tsunzu/halaman/lastPage.dart';
import 'package:tsunzu/shared/gesture_ku.dart';


class DaftarIsi extends StatelessWidget {
  const DaftarIsi({super.key});

  @override
  Widget build(BuildContext context) {
    var lebar = Get.width;
    Widget isi({
      required String judul,
      required String halaman,
      required Function() lompatke}) {
      return ListTile(
        title: Text(
            judul, style: TextStyle(color: Colors.white, fontSize: lebar / 20)),
        subtitle: Divider(color: Colors.white),
        trailing:
        Text(halaman,
            style: TextStyle(color: Colors.white, fontSize: lebar / 20)),
        onTap: lompatke,
        visualDensity: VisualDensity(horizontal: 0, vertical: -4),
      );
    }

    return Scaffold(
        body:  GestureKu(
          onSwipeKiri:()=>Get.to(
                () => Cover(),
            transition: Transition.leftToRight,
            duration: Duration(seconds: 1),
          ),
          onSwipeKanan:()=>Get.to(
                () => Bab1_0(),
            transition: Transition.rightToLeft,
            duration: Duration(seconds: 1),
          ),
          child: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: const BoxDecoration(
            color: Colors.blueGrey,
          ),
          child: Row(
            children: [
              Container(
                width: 25,
                color: Color(0xff1d2031),
              ),
              Expanded(
                child: Container(
                  padding:
                  const EdgeInsets.only(top: 35, bottom: 8, right: 8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('  Daftar Isi',
                          style: GoogleFonts.merienda(
                            textStyle: TextStyle(
                                color: Colors.yellow,
                                fontSize: lebar / 18,
                                fontWeight: FontWeight.bold,
                                letterSpacing: 1.0),
                          )),
                      Expanded(
                        child: ListView(
                            padding: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 20.0),
                            children: [
                              isi(
                                  judul: '01. Perencanaan',
                                  halaman: '0${halaman.indexOf(bab1_0)}',
                                  lompatke: () =>
                                      Get.to(() => Bab1_0(), transition: Transition.rightToLeft,
                                        duration: Duration(seconds: 1),)),
                              isi(
                                  judul: '02. Peperangan',
                                  halaman: '0${halaman.indexOf(bab2_0)}',
                                  lompatke: () =>
                                      Get.to(() => Bab2_0(), transition: Transition.rightToLeft,
                                        duration: Duration(seconds: 1),)),
                              isi(
                                  judul: '03. Strategi',
                                  halaman: '${halaman.indexOf(bab3_0)}',
                                  lompatke: () =>
                                      Get.to(() => Bab3_0(), transition: Transition.rightToLeft,
                                        duration: Duration(seconds: 1),)),
                              isi(
                                  judul: '04. Taktik',
                                  halaman: '${halaman.indexOf(bab4_0)}',
                                  lompatke: () =>
                                      Get.to(() => Bab4_0(), transition: Transition.rightToLeft,
                                        duration: Duration(seconds: 1),)),
                              isi(
                                  judul: '05. Energi',
                                  halaman: '${halaman.indexOf(bab5_0)}',
                                  lompatke: () =>
                                      Get.to(() => Bab5_0(), transition: Transition.rightToLeft,
                                        duration: Duration(seconds: 1),)),
                              isi(
                                  judul: '06. Titik Lemah dan Kuat',
                                  halaman: '${halaman.indexOf(bab6_0)}',
                                  lompatke: () =>
                                      Get.to(() => Bab6_0(), transition: Transition.rightToLeft,
                                        duration: Duration(seconds: 1),)),
                              isi(
                                  judul: '07. Manuver',
                                  halaman: '${halaman.indexOf(bab7_0)}',
                                  lompatke: () =>
                                      Get.to(() => Bab7_0(), transition: Transition.rightToLeft,
                                        duration: Duration(seconds: 1),)),
                              isi(
                                  judul: '08. Variasi Taktik',
                                  halaman: '${halaman.indexOf(bab8_0)}',
                                  lompatke: () =>
                                      Get.to(() => Bab8_0(), transition: Transition.rightToLeft,
                                        duration: Duration(seconds: 1),)),
                              isi(
                                  judul: '09. Pergerakan Pasukan',
                                  halaman: '${halaman.indexOf(bab9_0)}',
                                  lompatke: () =>
                                      Get.to(() => Bab9_0(), transition: Transition.rightToLeft,
                                        duration: Duration(seconds: 1),)),
                              isi(
                                  judul: '10. Medan Pertempuran',
                                  halaman: '${halaman.indexOf(bab10_0)}',
                                  lompatke: () =>
                                      Get.to(() => Bab10_0(), transition: Transition.rightToLeft,
                                        duration: Duration(seconds: 1),)),
                              isi(
                                  judul: '11. Sembilan Situasi',
                                  halaman: '${halaman.indexOf(bab11_0)}',
                                  lompatke: () =>
                                      Get.to(() => Bab11_0(), transition: Transition.rightToLeft,
                                        duration: Duration(seconds: 1),)),
                              isi(
                                  judul: '12. Serangan Dengan Api',
                                  halaman: '${halaman.indexOf(bab12_0)}',
                                  lompatke: () =>
                                      Get.to(() => Bab12_0(), transition: Transition.rightToLeft,
                                        duration: Duration(seconds: 1),)),
                              isi(
                                  judul: '13. Penggunaan Mata-Mata',
                                  halaman: '${halaman.indexOf(bab13_0)}',
                                  lompatke: () =>
                                      Get.to(() => Bab13_0(), transition: Transition.rightToLeft,
                                        duration: Duration(seconds: 1),)),
                              isi(
                                  judul: 'Daftar Istilah',
                                  halaman: '${halaman.indexOf(daftarIstilah)}',
                                  lompatke: () =>
                                      Get.to(() => DaftarIstilah(), transition: Transition.rightToLeft,
                                        duration: Duration(seconds: 1),)),
                              isi(
                                  judul: 'Halaman Penutup',
                                  halaman: '${halaman.indexOf(lastPage)}',
                                  lompatke: () =>
                                      Get.to(() => LastPage(), transition: Transition.rightToLeft,
                                        duration: Duration(seconds: 1),)),
                            ],
                          ),

                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
