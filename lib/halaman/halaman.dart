import 'package:flutter/material.dart';
import 'package:tsunzu/halaman/bab1_0.dart';
import 'package:tsunzu/halaman/bab1_1.dart';
import 'package:tsunzu/halaman/bab1_2.dart';
import 'package:tsunzu/halaman/bab1_3.dart';
import 'package:tsunzu/halaman/bab1_4.dart';
import 'package:tsunzu/halaman/bab1_5.dart';
import 'package:tsunzu/halaman/bab1_6.dart';
import 'package:tsunzu/halaman/bab2_0.dart';
import 'package:tsunzu/halaman/bab2_1.dart';
import 'package:tsunzu/halaman/bab2_2.dart';
import 'package:tsunzu/halaman/cover.dart';
import 'package:tsunzu/halaman/daftar_isi.dart';
import 'package:tsunzu/halaman/daftar_istilah.dart';

var cover = Cover();
var daftarIsi = DaftarIsi();
var daftarIstilah = DaftarIstilah();
Widget bab1_0 = Bab1_0();
Widget bab1_1 = Bab1_1();
Widget bab1_2 = Bab1_2();
Widget bab1_3 = Bab1_3();
Widget bab1_4 = Bab1_4();
Widget bab1_5 = Bab1_5();
Widget bab1_6 = Bab1_6();
Widget bab2_0 = Bab2_0();
Widget bab2_1 = Bab2_1();
Widget bab2_2 = Bab2_2();

List<Widget> halaman =[
  cover,
  daftarIsi,
  bab1_0, bab1_1, bab1_2,bab1_3,bab1_4,bab1_5,bab1_6,
  bab2_0, bab2_1,
];
