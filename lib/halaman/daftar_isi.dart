import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import '../data/book_content.dart';
import '../providers/ads_provider.dart';
import '../providers/reader_provider.dart';
import '../theme/app_theme.dart';
import 'daftar_istilah.dart';
import 'last_page.dart';
import 'reader_screen.dart';

class DaftarIsi extends ConsumerWidget {
  const DaftarIsi({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final readerState = ref.watch(readerProvider);
    final adsState = ref.watch(adsProvider);
    final isDark = readerState.themeMode == ReaderThemeMode.dark;

    final bgColor = isDark ? AppTheme.darkBackground : AppTheme.sepiaBackground;
    final cardColor = isDark ? AppTheme.darkCard : AppTheme.sepiaCard;
    final accentColor = isDark ? AppTheme.darkGold : AppTheme.sepiaVermilion;
    final textColor = isDark ? AppTheme.darkTextPrimary : AppTheme.sepiaTextPrimary;
    final subtitleColor = isDark ? AppTheme.darkTextSecondary : AppTheme.sepiaTextSecondary;
    final borderColor = isDark ? AppTheme.darkBorder : AppTheme.sepiaBorder;

    return Scaffold(
      backgroundColor: bgColor,
      appBar: AppBar(
        backgroundColor: isDark ? AppTheme.darkSurface : AppTheme.sepiaSurface,
        title: Text(
          'Daftar Isi',
          style: GoogleFonts.cinzel(
            color: accentColor,
            fontWeight: FontWeight.bold,
            letterSpacing: 1.2,
          ),
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_new, color: accentColor),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              itemCount: BookContent.chapters.length + 2, // + Glossary + Penutup
              itemBuilder: (context, index) {
                // Glossary item
                if (index == BookContent.chapters.length) {
                  return _buildSpecialTile(
                    context: context,
                    icon: Icons.menu_book,
                    title: 'Daftar Istilah (Glossary)',
                    subtitle: 'Daftar kata-kata dan istilah strategi khusus',
                    pageNumber: 112,
                    cardColor: cardColor,
                    borderColor: borderColor,
                    accentColor: accentColor,
                    textColor: textColor,
                    subtitleColor: subtitleColor,
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (_) => const DaftarIstilah()),
                      );
                    },
                  );
                }

                // Penutup item
                if (index == BookContent.chapters.length + 1) {
                  return _buildSpecialTile(
                    context: context,
                    icon: Icons.flag,
                    title: 'Halaman Penutup',
                    subtitle: 'Kesimpulan & dukungan apresiasi',
                    pageNumber: 113,
                    cardColor: cardColor,
                    borderColor: borderColor,
                    accentColor: accentColor,
                    textColor: textColor,
                    subtitleColor: subtitleColor,
                    onTap: () async {
                      await ref.read(adsProvider.notifier).showInterstitialAd(context);
                      if (context.mounted) {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (_) => const LastPage()),
                        );
                      }
                    },
                  );
                }

                final chapter = BookContent.chapters[index];
                final isCurrent = (readerState.currentPage >= chapter.startPageIndex &&
                    readerState.currentPage < chapter.startPageIndex + chapter.totalPages);

                return Container(
                  margin: const EdgeInsets.only(bottom: 10),
                  decoration: BoxDecoration(
                    color: cardColor,
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(
                      color: isCurrent ? accentColor : borderColor,
                      width: isCurrent ? 1.5 : 1,
                    ),
                  ),
                  child: ListTile(
                    contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
                    leading: Container(
                      width: 44,
                      height: 44,
                      padding: const EdgeInsets.all(4),
                      decoration: BoxDecoration(
                        color: Colors.black12,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Image.asset(chapter.imageAsset, fit: BoxFit.contain),
                    ),
                    title: Row(
                      children: [
                        Expanded(
                          child: Text(
                            chapter.title,
                            style: GoogleFonts.cinzel(
                              color: textColor,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        if (isCurrent)
                          Container(
                            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
                            decoration: BoxDecoration(
                              color: accentColor.withValues(alpha: 0.15),
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(color: accentColor, width: 0.8),
                            ),
                            child: Text(
                              'Aktif',
                              style: TextStyle(
                                color: accentColor,
                                fontSize: 11,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                      ],
                    ),
                    subtitle: Text(
                      '${chapter.numberTitle} • ${chapter.totalPages} Bagian',
                      style: TextStyle(color: subtitleColor, fontSize: 12),
                    ),
                    trailing: Text(
                      'Hal. ${chapter.startPageIndex}',
                      style: GoogleFonts.notoSerif(
                        color: accentColor,
                        fontWeight: FontWeight.w600,
                        fontSize: 13,
                      ),
                    ),
                    onTap: () async {
                      ref.read(readerProvider.notifier).setPage(chapter.startPageIndex);
                      await ref.read(adsProvider.notifier).showInterstitialAd(context);
                      if (context.mounted) {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (_) => ReaderScreen(initialPage: chapter.startPageIndex),
                          ),
                        );
                      }
                    },
                  ),
                );
              },
            ),
          ),

          // Bottom Ad Banner
          if (adsState.isBannerLoaded && adsState.bannerAd != null)
            SafeArea(
              top: false,
              child: SizedBox(
                width: adsState.bannerAd!.size.width.toDouble(),
                height: adsState.bannerAd!.size.height.toDouble(),
                child: AdWidget(ad: adsState.bannerAd!),
              ),
            ),
        ],
      ),
    );
  }

  Widget _buildSpecialTile({
    required BuildContext context,
    required IconData icon,
    required String title,
    required String subtitle,
    required int pageNumber,
    required Color cardColor,
    required Color borderColor,
    required Color accentColor,
    required Color textColor,
    required Color subtitleColor,
    required VoidCallback onTap,
  }) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      decoration: BoxDecoration(
        color: cardColor,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: borderColor),
      ),
      child: ListTile(
        contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
        leading: CircleAvatar(
          backgroundColor: accentColor.withValues(alpha: 0.15),
          child: Icon(icon, color: accentColor, size: 22),
        ),
        title: Text(
          title,
          style: GoogleFonts.cinzel(
            color: textColor,
            fontSize: 15,
            fontWeight: FontWeight.bold,
          ),
        ),
        subtitle: Text(
          subtitle,
          style: TextStyle(color: subtitleColor, fontSize: 12),
        ),
        trailing: const Icon(Icons.arrow_forward_ios, size: 14, color: Colors.grey),
        onTap: onTap,
      ),
    );
  }
}
