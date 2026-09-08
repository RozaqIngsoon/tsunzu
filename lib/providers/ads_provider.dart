import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

class AdsState {
  final BannerAd? bannerAd;
  final bool isBannerLoaded;
  final bool isInterstitialLoaded;

  const AdsState({
    this.bannerAd,
    this.isBannerLoaded = false,
    this.isInterstitialLoaded = false,
  });

  AdsState copyWith({
    BannerAd? bannerAd,
    bool? isBannerLoaded,
    bool? isInterstitialLoaded,
  }) {
    return AdsState(
      bannerAd: bannerAd ?? this.bannerAd,
      isBannerLoaded: isBannerLoaded ?? this.isBannerLoaded,
      isInterstitialLoaded: isInterstitialLoaded ?? this.isInterstitialLoaded,
    );
  }
}

class AdsNotifier extends StateNotifier<AdsState> {
  AdsNotifier() : super(const AdsState()) {
    _init();
  }

  static const String interUnitId = 'ca-app-pub-6472725668607841/5684754091';
  static const String bannerUnitId = 'ca-app-pub-6472725668607841/5696556872';

  InterstitialAd? _interstitialAd;
  bool _isShowingDialogOrAd = false;
  Completer<void>? _adDismissedCompleter;

  void _init() {
    loadBannerAd();
    loadInterstitialAd();
  }

  void loadBannerAd() {
    state.bannerAd?.dispose();
    BannerAd(
      adUnitId: bannerUnitId,
      request: const AdRequest(),
      size: AdSize.banner,
      listener: BannerAdListener(
        onAdLoaded: (ad) {
          state = state.copyWith(
            bannerAd: ad as BannerAd,
            isBannerLoaded: true,
          );
        },
        onAdFailedToLoad: (ad, err) {
          debugPrint('BannerAd failed to load: $err');
          ad.dispose();
          state = state.copyWith(isBannerLoaded: false);
        },
      ),
    ).load();
  }

  void loadInterstitialAd() {
    InterstitialAd.load(
      adUnitId: interUnitId,
      request: const AdRequest(),
      adLoadCallback: InterstitialAdLoadCallback(
        onAdLoaded: (ad) {
          _interstitialAd = ad;
          state = state.copyWith(isInterstitialLoaded: true);

          ad.fullScreenContentCallback = FullScreenContentCallback(
            onAdDismissedFullScreenContent: (ad) {
              ad.dispose();
              _interstitialAd = null;
              state = state.copyWith(isInterstitialLoaded: false);
              loadInterstitialAd();
              if (_adDismissedCompleter != null && !_adDismissedCompleter!.isCompleted) {
                _adDismissedCompleter!.complete();
              }
            },
            onAdFailedToShowFullScreenContent: (ad, err) {
              debugPrint('InterstitialAd failed to show: $err');
              ad.dispose();
              _interstitialAd = null;
              state = state.copyWith(isInterstitialLoaded: false);
              loadInterstitialAd();
              if (_adDismissedCompleter != null && !_adDismissedCompleter!.isCompleted) {
                _adDismissedCompleter!.complete();
              }
            },
          );
        },
        onAdFailedToLoad: (err) {
          debugPrint('InterstitialAd failed to load: $err');
          _interstitialAd = null;
          state = state.copyWith(isInterstitialLoaded: false);
        },
      ),
    );
  }

  /// Menampilkan iklan interstitial dengan dialog pemberitahuan ramah sebelumnya.
  /// Jika iklan belum dimuat (misal karena batasan frekuensi 5 menit AdMob),
  /// dialog tidak akan dimunculkan agar pengguna tidak terganggu sia-sia.
  Future<bool> showInterstitialAd(BuildContext context) async {
    if (_interstitialAd == null) {
      if (!state.isInterstitialLoaded) {
        loadInterstitialAd();
      }
      return false;
    }

    if (_isShowingDialogOrAd) return false;
    _isShowingDialogOrAd = true;

    try {
      if (!context.mounted) {
        _isShowingDialogOrAd = false;
        return false;
      }

      showDialog(
        context: context,
        barrierDismissible: false,
        builder: (_) => const AlertDialog(
          content: Row(
            children: [
              CircularProgressIndicator(),
              SizedBox(width: 16),
              Expanded(
                child: Text(
                  "Tunggu sebentar, untuk mendukung pengembang, iklan akan ditampilkan...",
                ),
              ),
            ],
          ),
        ),
      );

      await Future.delayed(const Duration(seconds: 2));

      if (context.mounted) {
        Navigator.of(context, rootNavigator: true).pop();
      }

      if (_interstitialAd != null) {
        final completer = Completer<void>();
        _adDismissedCompleter = completer;

        await _interstitialAd!.show();

        await completer.future.timeout(
          const Duration(seconds: 30),
          onTimeout: () {
            debugPrint('Interstitial ad wait timed out');
          },
        );
        return true;
      }
    } catch (e) {
      debugPrint('Error showing interstitial ad: $e');
    } finally {
      _isShowingDialogOrAd = false;
      _adDismissedCompleter = null;
    }
    return false;
  }

  /// Kompatibilitas mundur jika dipanggil dari tempat lama
  void checkAndShowInterstitial([BuildContext? context]) {
    if (context != null) {
      showInterstitialAd(context);
    } else if (_interstitialAd != null) {
      _interstitialAd!.show();
    } else if (!state.isInterstitialLoaded) {
      loadInterstitialAd();
    }
  }

  @override
  void dispose() {
    state.bannerAd?.dispose();
    _interstitialAd?.dispose();
    super.dispose();
  }
}

final adsProvider = StateNotifierProvider<AdsNotifier, AdsState>((ref) {
  return AdsNotifier();
});
