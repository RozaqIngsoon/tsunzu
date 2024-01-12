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

  var isHalamanTerbaca =0.obs;
  tampilkanIklan() {
    var hal = controllerPageFlip.currentState?.pageNumber;
    print('...........method iklan (halaman : $hal');
    List awalBab = [
      pages.indexOf(bab1_cover),
      pages.indexOf(bab2_cover),
      pages.indexOf(bab3_cover),
      pages.indexOf(bab4_cover),
      pages.indexOf(bab5_cover),
      pages.indexOf(bab6_cover),
      pages.indexOf(bab7_cover),
      pages.indexOf(bab8_cover),
    ];
    // if (awalBab.contains(hal)) {
    //   print('...........iklan di tampilkan $hal');
    // }
    //iklan ditampilkan bila telah membaca 3 halaman
    if (isHalamanTerbaca.value >1 && isHalamanTerbaca.value%3 == 0) {
      print('...........iklan di tampilkan setelah membaca 3 halaman');
    }
    //dia anggap membaca bila halaman terbuka lebih dari 3 detik
    if(hal! > 2 &&
        hal >= isHalamanTerbaca.value){
      Future.delayed(Duration(seconds: 3)).then((_) {
        isHalamanTerbaca.value = isHalamanTerbaca.value+1;
        print('...........menghitung halaman terbaca = ${isHalamanTerbaca.value}');
      });
    }


    // if(isHalamanTerbaca.value%4 == 0&& interstitialAd != null){
    //   interstitialAd!.show();
    // }
  }
}
