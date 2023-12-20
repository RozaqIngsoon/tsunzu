import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Kontroller extends GetxController{
  String appTitel = 'Seni Perang Sun Tzu';
  Color backgroundGelap = Color(0xff1d2031);
  Color backgroundTerang = Colors.blueGrey;
  String bookmark = 'PAGE_BOOKMARK';//key di sharepreference
  String coverBuku = 'assets/ikon_app.png';
  final TextEditingController editingController = TextEditingController();
}