import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:tsunzu/halaman/halaman.dart';


class Kontroller extends GetxController {
  Color backgroundGelap = Color(0xff1d2031);
  Color backgroundTerang = Colors.blueGrey;
  String bookmark = 'PAGE_BOOKMARK'; //key di sharepreference
  String hitungBaca = 'PAGE_TERBACA'; //key di sharepreference
  String coverBuku = 'assets/ikon_app.png';
  var bookmarkNo = 0.obs;
  var halSkg  = 0.obs;
  ///atur timer
  //variabel untuk menyimpan timer
  var timerValue = 0.obs;
  //timer
  Timer? _timer;
  //memulai timer
  void startTimer(){
    _timer = Timer.periodic(Duration(seconds: 1), (timer) {
      timerValue.value ++;
      //timer disimpan setiap 5 detik
      if(timerValue.value % 5 == 0){
        saveTimerValue();
      }

    });

  }
  //mematikan timer dan menyimpan
  void stopTimer(){
    _timer?.cancel();
    saveTimerValue();
  }
  //menyimpan nilai timer
  Future<void> saveTimerValue() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setInt('timerValue', timerValue.value);
  }
  //mengambil nilai timer
  Future<void> loadTimerValue() async {
    final prefs = await SharedPreferences.getInstance();
    final value = prefs.getInt('timerValue')??0;
    timerValue.value = value;
    startTimer();
  }


  @override
  void onInit() async {
    await getBookmark();
    loadTimerValue();
    loadAdIntersitial();
    super.onInit();
  }

  @override
  void onClose() {
    interstitialAd?.dispose();
    stopTimer();
    super.onClose();
  }

  getBookmark() async {
    // debugPrint('.........running getBookmark()');
    SharedPreferences prefs = await SharedPreferences.getInstance();
    //Return int
    int intValue = prefs.getInt(bookmark) ?? 0;
    bookmarkNo.value = intValue;
    // debugPrint('.........bookmarkNo.value stelah getBookmark : ${bookmarkNo.value}');
    if(bookmarkNo.value != 0){
      Widget _page = halaman[bookmarkNo.value];
      Get.to(() => _page, transition: Transition.rightToLeft,
        duration: Duration(seconds: 2),);
    }

  }

  Future<void> setBookmark(int hal) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setInt(bookmark, hal);
  }

//atur iklan

  tampilkanIklan() {
    //iklan tampil setiap 5 menit sekali
    int menit5 = 60*5;
    if(timerValue.value >= menit5 && interstitialAd != null){
      stopTimer();
      timerValue.value =0;
      interstitialAd!.show();
      startTimer();
    }
  }

  //intersitial admob
  InterstitialAd? interstitialAd;
  final adUnitId = 'ca-app-pub-6472725668607841/5684754091';
  void loadAdIntersitial() {
    InterstitialAd.load(
        adUnitId: adUnitId,
        request: const AdRequest(),
        adLoadCallback: InterstitialAdLoadCallback(
          // Called when an ad is successfully received.
          onAdLoaded: (ad) {
            ad.fullScreenContentCallback = FullScreenContentCallback(
              // Called when the ad showed the full screen content.
                onAdShowedFullScreenContent: (ad) {},
                // Called when an impression occurs on the ad.
                onAdImpression: (ad) {},
                // Called when the ad failed to show full screen content.
                onAdFailedToShowFullScreenContent: (ad, err) {
                  // Dispose the ad here to free resources.
                  // debugPrint('..............ad gagal tampil');
                  ad.dispose();
                  loadAdIntersitial();
                },
                // Called when the ad dismissed full screen content.
                onAdDismissedFullScreenContent: (ad) {
                  // Dispose the ad here to free resources.
                  // debugPrint('..............ad di tutup');
                  ad.dispose();
                  loadAdIntersitial();
                },
                // Called when a click is recorded for an ad.
                onAdClicked: (ad) {});

            debugPrint('$ad loaded.');
            // Keep a reference to the ad so you can show it later.
            interstitialAd = ad;
          },
          // Called when an ad request failed.
          onAdFailedToLoad: (LoadAdError error) {
            debugPrint('InterstitialAd failed to load: $error');
          },
        ));
  }

  ///end
}
