import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import '../data/book_content.dart';
import '../providers/ads_provider.dart';
import '../providers/reader_provider.dart';
import '../shared/dukungan.dart';
import '../theme/app_theme.dart';
import 'daftar_isi.dart';
import 'daftar_istilah.dart';
import 'reader_screen.dart';

class Cover extends ConsumerWidget {
  const Cover({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final readerState = ref.watch(readerProvider);
    final adsState = ref.watch(adsProvider);
    final isDark = readerState.themeMode == ReaderThemeMode.dark;
    final accentColor = isDark ? AppTheme.darkGold : AppTheme.sepiaVermilion;

    final targetPage = readerState.bookmarkPage > 1
        ? readerState.bookmarkPage
        : (readerState.lastReadPage > 1 ? readerState.lastReadPage : 2);
    final hasHistory = readerState.bookmarkPage > 1 || readerState.lastReadPage > 1;

    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/background_1.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Container(
          color: Colors.black.withValues(alpha: 0.55),
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
          child: SafeArea(
            child: Column(
              children: [
                const SizedBox(height: 16),
                // Top subtitle badge
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
                  decoration: BoxDecoration(
                    color: Colors.black38,
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: accentColor.withValues(alpha: 0.6), width: 1),
                  ),
                  child: Text(
                    'FILOSOFI STRATEGI KLASIK',
                    style: GoogleFonts.cinzel(
                      color: accentColor,
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 2.0,
                    ),
                  ),
                ),
                const SizedBox(height: 20),

                // Main Title
                Text(
                  'Art of War',
                  style: GoogleFonts.merienda(
                    textStyle: TextStyle(
                      color: accentColor,
                      fontSize: 48,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1.5,
                      shadows: [
                        Shadow(
                          color: Colors.black.withValues(alpha: 0.8),
                          blurRadius: 10,
                          offset: const Offset(2, 2),
                        ),
                      ],
                    ),
                  ),
                  textAlign: TextAlign.center,
                ),
                Text(
                  'SENI PERANG SUN TZU',
                  style: GoogleFonts.cinzel(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    letterSpacing: 3.0,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 16),

                Text(
                  'Sebuah strategi militer agung dari Tiongkok kuno yang berpengaruh mendalam terhadap filosofi Timur dan Barat.',
                  style: GoogleFonts.notoSerif(
                    fontSize: 14,
                    color: Colors.white70,
                    fontStyle: FontStyle.italic,
                    height: 1.5,
                  ),
                  textAlign: TextAlign.center,
                ),

                const Spacer(),

                // Continue reading or Start reading button
                if (hasHistory) ...[
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton.icon(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (_) => ReaderScreen(initialPage: targetPage),
                          ),
                        );
                      },
                      icon: const Icon(Icons.menu_book, color: Colors.black),
                      label: Text(
                        'Lanjutkan Membaca (${BookContent.getPageTitle(targetPage)})',
                        style: GoogleFonts.cinzel(
                          color: Colors.black,
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1.0,
                        ),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: accentColor,
                        padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 16),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(14),
                        ),
                        elevation: 6,
                      ),
                    ),
                  ),
                  const SizedBox(height: 12),
                ],

                // Start from beginning button
                SizedBox(
                  width: double.infinity,
                  child: OutlinedButton.icon(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => const ReaderScreen(initialPage: 2),
                        ),
                      );
                    },
                    icon: Icon(Icons.play_arrow, color: hasHistory ? Colors.white : Colors.black),
                    label: Text(
                      'Mulai dari Bab Pertama',
                      style: GoogleFonts.cinzel(
                        color: hasHistory ? Colors.white : Colors.black,
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1.0,
                      ),
                    ),
                    style: OutlinedButton.styleFrom(
                      backgroundColor: hasHistory ? Colors.black45 : accentColor,
                      side: BorderSide(color: accentColor, width: 1.5),
                      padding: const EdgeInsets.symmetric(vertical: 14),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(14),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 16),

                // Quick Navigation Row (Daftar Isi, Istilah, Dukungan)
                Row(
                  children: [
                    Expanded(
                      child: _buildNavButton(
                        context: context,
                        icon: Icons.list_alt,
                        label: 'Daftar Isi',
                        accentColor: accentColor,
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (_) => const DaftarIsi()),
                          );
                        },
                      ),
                    ),
                    const SizedBox(width: 8),
                    Expanded(
                      child: _buildNavButton(
                        context: context,
                        icon: Icons.search,
                        label: 'Istilah',
                        accentColor: accentColor,
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (_) => const DaftarIstilah()),
                          );
                        },
                      ),
                    ),
                    const SizedBox(width: 8),
                    Expanded(
                      child: _buildNavButton(
                        context: context,
                        icon: Icons.favorite,
                        label: 'Dukungan',
                        accentColor: accentColor,
                        onTap: () => DukunganModal.show(context),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 12),

                const Text(
                  'Terjemahan Bahasa Indonesia • 544 – 496 SM',
                  style: TextStyle(fontSize: 11, color: Colors.white54),
                ),
                const SizedBox(height: 8),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: adsState.isBannerLoaded && adsState.bannerAd != null
          ? SafeArea(
              top: false,
              child: SizedBox(
                width: adsState.bannerAd!.size.width.toDouble(),
                height: adsState.bannerAd!.size.height.toDouble(),
                child: AdWidget(ad: adsState.bannerAd!),
              ),
            )
          : null,
    );
  }

  Widget _buildNavButton({
    required BuildContext context,
    required IconData icon,
    required String label,
    required Color accentColor,
    required VoidCallback onTap,
  }) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(10),
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 10),
        decoration: BoxDecoration(
          color: Colors.black45,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Colors.white24),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(icon, color: accentColor, size: 20),
            const SizedBox(height: 4),
            Text(
              label,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 12,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
