import 'package:flutter/material.dart';
import 'package:tsunzu/halaman/bab1_0.dart';
import 'package:tsunzu/halaman/bab1_1.dart';
import 'package:tsunzu/halaman/cover.dart';
import 'package:tsunzu/halaman/daftar_isi.dart';

var cover = Cover();
var daftarIsi = DaftarIsi();
Widget bab1_0 = Bab1_0();
Widget bab1_1 = Bab1_1();

List<Widget> halaman =[
  cover,
  daftarIsi,
  bab1_0,
  bab1_1
];
