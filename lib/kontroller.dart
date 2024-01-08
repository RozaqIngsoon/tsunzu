import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:tsunzu/home_screen.dart';

import 'pages/pages.dart';

class Kontroller extends GetxController {
  Color backgroundGelap = Color(0xff1d2031);
  Color backgroundTerang = Colors.blueGrey;
  String bookmark = 'PAGE_BOOKMARK'; //key di sharepreference
  String coverBuku = 'assets/ikon_app.png';
  var bookmarkNo = 1000.obs;
  late Timer timer;

  @override
  void onInit() async {
    getBookmark();
    // timer= Timer.periodic(Duration(seconds: 10), (timer) {
    //   var hal = controllerPageFlip.currentState!.pageNumber;
    //   print('......halaman = $hal');
    // });
    super.onInit();
  }

  // @override
  // void onClose() async {
  //   setBookmark(controllerPageFlip.currentState!.pageNumber);
  //   timer.cancel();
  //   super.onClose();
  // }

  getBookmark() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    //Return int
    int intValue = prefs.getInt(bookmark) ?? 0;
    bookmarkNo.value = intValue;
  }

  Future<void> setBookmark(int hal) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setInt(bookmark, hal);
  }

  tampilkanIklan() {
    print('...........method iklan');
    var hal = controllerPageFlip.currentState?.pageNumber;
    List awalBab = [
      pages.indexOf(bab1_1),
      pages.indexOf(bab2_1),
      pages.indexOf(bab3_1),
      pages.indexOf(bab4_1),
      pages.indexOf(bab5_1),
      pages.indexOf(bab6_1)
    ];
    if (awalBab.contains(hal)) {
      print('...........iklan di tampilkan $hal');
    }
  }
}
