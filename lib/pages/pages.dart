import 'package:flutter/material.dart';
import 'package:tsunzu/pages/bab1_4.dart';
import 'package:tsunzu/pages/bab1_5.dart';
import 'package:tsunzu/pages/bab2_5.dart';
import 'package:tsunzu/pages/bab2_6.dart';
import 'package:tsunzu/pages/bab3_5.dart';
import 'package:tsunzu/pages/bab3_6.dart';
import 'package:tsunzu/pages/bab4_1.dart';
import 'package:tsunzu/pages/bab4_2.dart';
import 'package:tsunzu/pages/bab4_3.dart';
import 'package:tsunzu/pages/bab4_4.dart';
import 'package:tsunzu/pages/bab4_5.dart';
import 'package:tsunzu/pages/bab4_cover.dart';
import 'package:tsunzu/pages/bab5_1.dart';
import 'package:tsunzu/pages/bab5_2.dart';
import 'package:tsunzu/pages/bab5_3.dart';
import 'package:tsunzu/pages/bab5_4.dart';
import 'package:tsunzu/pages/bab5_5.dart';
import 'package:tsunzu/pages/bab5_6.dart';
import 'package:tsunzu/pages/bab5_cover.dart';
import 'package:tsunzu/pages/bab6_1.dart';
import 'package:tsunzu/pages/bab6_2.dart';
import 'package:tsunzu/pages/bab6_3.dart';
import 'package:tsunzu/pages/bab6_4.dart';
import 'package:tsunzu/pages/bab6_5.dart';
import 'package:tsunzu/pages/bab6_6.dart';
import 'package:tsunzu/pages/bab6_7.dart';
import 'package:tsunzu/pages/bab6_8.dart';
import 'package:tsunzu/pages/bab6_9.dart';
import 'package:tsunzu/pages/bab6_cover.dart';
import 'package:tsunzu/pages/bab7_1.dart';
import 'package:tsunzu/pages/bab7_2.dart';
import 'package:tsunzu/pages/bab7_3.dart';
import 'package:tsunzu/pages/bab7_4.dart';
import 'package:tsunzu/pages/bab7_5.dart';
import 'package:tsunzu/pages/bab7_6.dart';
import 'package:tsunzu/pages/bab7_7.dart';
import 'package:tsunzu/pages/bab7_8.dart';
import 'package:tsunzu/pages/bab7_9.dart';
import 'package:tsunzu/pages/bab7_cover.dart';
import 'package:tsunzu/pages/bab8_1.dart';
import 'package:tsunzu/pages/bab8_2.dart';
import 'package:tsunzu/pages/bab8_3.dart';
import 'package:tsunzu/pages/bab8_4.dart';
import 'package:tsunzu/pages/bab8_cover.dart';
import 'package:tsunzu/pages/cover_depan.dart';
import 'package:tsunzu/pages/daftar_isi.dart';
import 'package:tsunzu/pages/bab3_cover.dart';
import 'package:tsunzu/pages/bab3_1.dart';
import 'package:tsunzu/pages/bab3_2.dart';
import 'package:tsunzu/pages/bab3_3.dart';
import 'package:tsunzu/pages/bab3_4.dart';
import 'package:tsunzu/pages/bab1_cover.dart';
import 'package:tsunzu/pages/bab1_1.dart';
import 'package:tsunzu/pages/bab1_2.dart';
import 'package:tsunzu/pages/bab1_3.dart';
import 'package:tsunzu/pages/bab2_cover.dart';
import 'package:tsunzu/pages/bab2_1.dart';
import 'package:tsunzu/pages/bab2_2.dart';
import 'package:tsunzu/pages/bab2_3.dart';
import 'package:tsunzu/pages/bab2_4.dart';

import 'lastPage.dart';

var coverDepan = CoverDepan();
var daftarIsi = DaftarIsi();
var lastPage = LastPage();
Widget bab1_cover = BabSatuCover();
Widget bab1_1 = BabSatu1();
Widget bab1_2 = BabSatu2();
Widget bab1_3 = BabSatu3();
Widget bab1_4 = BabSatu4();
Widget bab1_5 = BabSatu5();
Widget bab2_cover = BabDuaCover();
Widget bab2_1 = BabDua1();
Widget bab2_2 = BabDua2();
Widget bab2_3 = BabDua3();
Widget bab2_4 = BabDua4();
Widget bab2_5 = BabDua5();
Widget bab2_6 = BabDua6();
Widget bab3_cover = BabTigaCover();
Widget bab3_1 = BabTiga1();
Widget bab3_2 = BabTiga2();
Widget bab3_3 = BabTiga3();
Widget bab3_4 = BabTiga4();
Widget bab3_5 = BabTiga5();
Widget bab3_6 = BabTiga6();
Widget bab4_cover = BabEmpatCover();
Widget bab4_1 = BabEmpat1();
Widget bab4_2 = BabEmpat2();
Widget bab4_3 = BabEmpat3();
Widget bab4_4 = BabEmpat4();
Widget bab4_5 = BabEmpat5();
Widget bab5_cover = BabLimaCover();
Widget bab5_1 = BabLima1();
Widget bab5_2 = BabLima2();
Widget bab5_3 = BabLima3();
Widget bab5_4 = BabLima4();
Widget bab5_5 = BabLima5();
Widget bab5_6 = BabLima6();
Widget bab6_cover = BabEnamCover();
Widget bab6_1 = BabEnam1();
Widget bab6_2 = BabEnam2();
Widget bab6_3 = BabEnam3();
Widget bab6_4 = BabEnam4();
Widget bab6_5 = BabEnam5();
Widget bab6_6 = BabEnam6();
Widget bab6_7 = BabEnam7();
Widget bab6_8 = BabEnam8();
Widget bab6_9 = BabEnam9();
Widget bab7_cover = BabTujuhCover();
Widget bab7_1 = BabTujuh1();
Widget bab7_2 = BabTujuh2();
Widget bab7_3 = BabTujuh3();
Widget bab7_4 = BabTujuh4();
Widget bab7_5 = BabTujuh5();
Widget bab7_6 = BabTujuh6();
Widget bab7_7 = BabTujuh7();
Widget bab7_8 = BabTujuh8();
Widget bab7_9 = BabTujuh9();
Widget bab8_cover = BabDelapanCover();
Widget bab8_1 = BabDelapan1();
Widget bab8_2 = BabDelapan2();
Widget bab8_3 = BabDelapan3();
Widget bab8_4 = BabDelapan4();

List<Widget> pages = [
  coverDepan,
  daftarIsi,
  bab1_cover,
  bab1_1,
  bab1_2,
  bab1_3,
  bab1_4,
  bab1_5,
  bab2_cover,
  bab2_1,
  bab2_2,
  bab2_3,
  bab2_4,
  bab2_5,
  bab2_6,
  bab3_cover,
  bab3_1,
  bab3_2,
  bab3_3,
  bab3_4,
  bab3_5,
  bab3_6,
  bab4_cover,
  bab4_1,
  bab4_2,
  bab4_3,
  bab4_4,
  bab4_5,
  bab5_cover,
  bab5_1,
  bab5_2,
  bab5_3,
  bab5_4,
  bab5_5,
  bab5_6,
  bab6_cover,
  bab6_1,
  bab6_2,
  bab6_3,
  bab6_4,
  bab6_5,
  bab6_6,
  bab6_7,
  bab6_8,
  bab6_9,
  bab7_cover,
  bab7_1,
  bab7_2,
  bab7_3,
  bab7_4,
  bab7_5,
  bab7_6,
  bab7_7,
  bab7_8,
  bab7_9,
  bab8_cover,
  bab8_1,
  bab8_2,
  bab8_3,
  bab8_4
];
