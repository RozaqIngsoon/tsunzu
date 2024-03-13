import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tsunzu/halaman/bab1_0.dart';
import 'package:tsunzu/halaman/bab2_0.dart';
import 'package:tsunzu/halaman/cover.dart';
import 'package:tsunzu/halaman/halaman.dart';
import 'package:tsunzu/kontroller.dart';


class DaftarIsi extends StatelessWidget {
  const DaftarIsi({super.key});

  @override
  Widget build(BuildContext context) {
    final kontrol = Get.find<Kontroller>();
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

    return GestureDetector(
      onVerticalDragUpdate: (detail) {},
      onHorizontalDragUpdate: (detail) {
        //back
        if (detail.delta.direction <= 0) {
          Get.to(() => Cover(), transition: Transition.leftToRight,
            duration: Duration(seconds: 1),);
        }
        //next
        if (detail.delta.direction > 0) {
          kontrol.tampilkanIklan();
          Get.to(() => Bab1_0(), transition: Transition.rightToLeft,
            duration: Duration(seconds: 1),);
        }
      },
      child: Scaffold(
        body: Container(
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

                              // isi(
                              //   judul: '03. Strategi',
                              //   halaman: '${pages.indexOf(bab3_cover)}',
                              //   lompatke: pages.indexOf(bab3_cover),),
                              // isi(
                              //   judul: '04. Taktik',
                              //   halaman: '${pages.indexOf(bab4_cover)}',
                              //   lompatke: pages.indexOf(bab4_cover),),
                              // isi(
                              //   judul: '05. Energi',
                              //   halaman: '${pages.indexOf(bab5_cover)}',
                              //   lompatke: pages.indexOf(bab5_cover),),
                              // isi(
                              //   judul: '06. Titik Lemah dan Kuat',
                              //   halaman: '${pages.indexOf(bab6_cover)}',
                              //   lompatke: pages.indexOf(bab6_cover),),
                              // isi(
                              //   judul: '07. Manuver',
                              //   halaman: '${pages.indexOf(bab7_cover)}',
                              //   lompatke: pages.indexOf(bab7_cover),),
                              // isi(
                              //   judul: '08. Variasi Taktik',
                              //   halaman: '${pages.indexOf(bab8_cover)}',
                              //   lompatke: pages.indexOf(bab8_cover),),
                              // isi(
                              //   judul: '09. Pergerakan Pasukan',
                              //   halaman: '${pages.indexOf(bab9_cover)}',
                              //   lompatke: pages.indexOf(bab9_cover),),
                              // isi(
                              //   judul: '10. Medan Pertempuran',
                              //   halaman: '${pages.indexOf(bab10_cover)}',
                              //   lompatke: pages.indexOf(bab10_cover),),
                              // isi(
                              //   judul: '11. Sembilan Situasi',
                              //   halaman: '${pages.indexOf(bab11_cover)}',
                              //   lompatke: pages.indexOf(bab11_cover),),
                              // isi(
                              //   judul: '12. Serangan Dengan Api',
                              //   halaman: '${pages.indexOf(bab12_cover)}',
                              //   lompatke: pages.indexOf(bab12_cover),),
                              // isi(
                              //   judul: '13. Penggunaan Mata-Mata',
                              //   halaman: '${pages.indexOf(bab13_cover)}',
                              //   lompatke: pages.indexOf(bab13_cover),),
                              // isi(
                              //   judul: 'Daftar Istilah',
                              //   halaman: '${pages.indexOf(daftarIstilah)}',
                              //   lompatke: pages.indexOf(daftarIstilah),),
                              // isi(
                              //   judul: 'Halaman Penutup',
                              //   halaman: '${pages.indexOf(pages.last)}',
                              //   lompatke: pages.indexOf(pages.last),),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
