import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Kontroller extends GetxController{
  Color backgroundGelap = Color(0xff1d2031);
  Color backgroundTerang = Colors.blueGrey;
  String bookmark = 'PAGE_BOOKMARK';//key di sharepreference
  String coverBuku = 'assets/ikon_app.png';
  final TextEditingController editingController = TextEditingController();
  var bookmarkNo = 1000.obs;

  @override
  void onInit() async {
    getBookmark();
    super.onInit();
  }
   getBookmark() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    //Return int
    int intValue = prefs.getInt(bookmark) ?? 0;
    bookmarkNo.value=intValue;
  }

  Future<void> setBookmark(int hal) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setInt(bookmark, hal);
  }
}