import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:tsunzu/home_screen.dart';


class Kontroller extends GetxController {
  Color backgroundGelap = Color(0xff1d2031);
  Color backgroundTerang = Colors.blueGrey;
  String bookmark = 'PAGE_BOOKMARK'; //key di sharepreference
  String hitungBaca = 'PAGE_TERBACA'; //key di sharepreference
  String coverBuku = 'assets/ikon_app.png';
  var bookmarkNo = 1000.obs;
  late Timer timer;

  @override
  void onInit() async {
    await getBookmark();
     getHitungBaca();
    loadAdIntersitial();
    super.onInit();
  }

  @override
  void dispose() {
    interstitialAd?.dispose();
    super.dispose();
  }

  getBookmark() async {
    debugPrint('.........running getBookmark()');
    SharedPreferences prefs = await SharedPreferences.getInstance();
    //Return int
    int intValue = prefs.getInt(bookmark) ?? 0;
    bookmarkNo.value = intValue;
    // debugPrint('.........bookmarkNo.value : ${bookmarkNo.value}');

  }

  Future<void> setBookmark(int hal) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setInt(bookmark, hal);
  }
//atur iklan
  Timer? _timer;
  var isHalamanTerbaca =0.obs;
  getHitungBaca() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    //Return int
    int intValue = prefs.getInt(hitungBaca) ?? 0;
    isHalamanTerbaca.value = intValue;
  }
  Future<void> setHitungBaca(int kaliBaca) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setInt(hitungBaca, kaliBaca);
  }
  tampilkanIklan() {
    _timer?.cancel();
    var hal = controllerPageFlip.currentState?.pageNumber;

    //dianggap membaca bila halaman terbuka lebih dari 5 detik selain halaman cover depan & daftar isi
    if(hal! > 2 ){
      _timer = Timer(Duration(seconds: 5),(){
          isHalamanTerbaca.value = isHalamanTerbaca.value+1;
          // print('...........menghitung halaman terbaca = ${isHalamanTerbaca.value}');
          setHitungBaca(isHalamanTerbaca.value);
      });
      //iklan ditampilkan bila telah membaca 3 halaman
      if (_timer!=null && isHalamanTerbaca.value >1 && isHalamanTerbaca.value%3 == 0) {
        // print('...........iklan di tampilkan setelah membaca 3 halaman');
        interstitialAd!.show();
      }
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
