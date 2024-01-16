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
//atur iklan
  Timer? _timer;
  var isHalamanTerbaca =0.obs;
  tampilkanIklan() {
    _timer?.cancel();
    var hal = controllerPageFlip.currentState?.pageNumber;
    print('...........method iklan (halaman : $hal');
    //iklan ditampilkan bila telah membaca 3 halaman
    if (isHalamanTerbaca.value >1 && isHalamanTerbaca.value%3 == 0) {
      print('...........iklan di tampilkan setelah membaca 3 halaman');
    }
    //dianggap membaca bila halaman terbuka lebih dari 5 detik selain halaman cover depan & daftar isi
    if(hal! > 2 ){
      _timer = Timer(Duration(seconds: 5),(){
          isHalamanTerbaca.value = isHalamanTerbaca.value+1;
          print('...........menghitung halaman terbaca = ${isHalamanTerbaca.value}');
      });
    }


    // if(isHalamanTerbaca.value%4 == 0&& interstitialAd != null){
    //   interstitialAd!.show();
    // }
  }
}
