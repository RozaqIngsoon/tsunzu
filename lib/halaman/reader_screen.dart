import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import '../data/book_content.dart';
import '../providers/ads_provider.dart';
import '../providers/reader_provider.dart';
import '../shared/markdown_ku.dart';
import '../theme/app_theme.dart';
import 'cover.dart';
import 'daftar_isi.dart';
import 'daftar_istilah.dart';
import 'last_page.dart';

class ReaderScreen extends ConsumerStatefulWidget {
  final int initialPage;

  const ReaderScreen({super.key, this.initialPage = 2});

  @override
  ConsumerState<ReaderScreen> createState() => _ReaderScreenState();
}

class _ReaderScreenState extends ConsumerState<ReaderScreen> {
  late PageController _pageController;
  late int _currentPage;

  @override
  void initState() {
    super.initState();
    _currentPage = widget.initialPage.clamp(0, BookContent.totalPages - 1);
    _pageController = PageController(initialPage: _currentPage);

    // Sync state
    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref.read(readerProvider.notifier).setPage(_currentPage);
    });
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  void _goToPage(int page) {
    if (page >= 0 && page < BookContent.totalPages) {
      _pageController.animateToPage(
        page,
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    }
  }

  bool _isExiting = false;

  Future<void> _handleExit() async {
    if (_isExiting) return;
    _isExiting = true;
    await ref.read(adsProvider.notifier).showInterstitialAd(context);
    if (mounted) {
      Navigator.of(context).pop();
    }
  }

  @override
  Widget build(BuildContext context) {
    final readerState = ref.watch(readerProvider);
    final adsState = ref.watch(adsProvider);
    final isDark = readerState.themeMode == ReaderThemeMode.dark;

    final bgColor = isDark ? AppTheme.darkBackground : AppTheme.sepiaBackground;
    final accentColor = isDark ? AppTheme.darkGold : AppTheme.sepiaVermilion;
    final hudBgColor = (isDark ? AppTheme.darkSurface : AppTheme.sepiaSurface).withValues(alpha: 0.95);
    final isBookmarked = readerState.bookmarkPage == _currentPage;

    return PopScope(
      canPop: _isExiting,
      onPopInvokedWithResult: (didPop, result) async {
        if (didPop) return;
        await _handleExit();
      },
      child: Scaffold(
        backgroundColor: bgColor,
        body: Stack(
          children: [
            // Main Page View
            PageView.builder(
              controller: _pageController,
              itemCount: BookContent.totalPages,
              onPageChanged: (page) {
                setState(() => _currentPage = page);
                ref.read(readerProvider.notifier).setPage(page);

                // Tampilkan iklan saat transisi masuk bab baru (jeda baca alami) atau halaman penutup, bukan di tengah bab
                final isChapterStart = page > 2 && BookContent.chapters.any((c) => c.startPageIndex == page);
                final isBookEnd = page == BookContent.totalPages - 1;
                if (isChapterStart || isBookEnd) {
                  ref.read(adsProvider.notifier).showInterstitialAd(context);
                }
              },
              itemBuilder: (context, index) {
                return _buildPageContent(index, readerState, isDark, accentColor);
              },
            ),

            // Tap detection overlay for left/center/right zones
            Positioned.fill(
              child: Row(
                children: [
                  // Left 15% zone: previous page
                  Expanded(
                    flex: 2,
                    child: GestureDetector(
                      behavior: HitTestBehavior.translucent,
                      onTap: () {
                        if (_currentPage > 0) _goToPage(_currentPage - 1);
                      },
                    ),
                  ),
                  // Center 70% zone: toggle HUD
                  Expanded(
                    flex: 7,
                    child: GestureDetector(
                      behavior: HitTestBehavior.translucent,
                      onTap: () {
                        ref.read(readerProvider.notifier).toggleControls();
                      },
                    ),
                  ),
                  // Right 15% zone: next page
                  Expanded(
                    flex: 2,
                    child: GestureDetector(
                      behavior: HitTestBehavior.translucent,
                      onTap: () {
                        if (_currentPage < BookContent.totalPages - 1) {
                          _goToPage(_currentPage + 1);
                        }
                      },
                    ),
                  ),
                ],
              ),
            ),

            // Top HUD
            AnimatedPositioned(
              duration: const Duration(milliseconds: 220),
              top: readerState.isControlsVisible ? 0 : -100,
              left: 0,
              right: 0,
              child: Container(
                color: hudBgColor,
                padding: EdgeInsets.only(
                  top: MediaQuery.of(context).padding.top + 4,
                  bottom: 8,
                  left: 8,
                  right: 8,
                ),
                child: Row(
                  children: [
                    IconButton(
                      icon: Icon(Icons.arrow_back_ios_new, color: accentColor, size: 20),
                      onPressed: _handleExit,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            BookContent.getPageTitle(_currentPage),
                            style: GoogleFonts.cinzel(
                              color: isDark ? AppTheme.darkTextPrimary : AppTheme.sepiaTextPrimary,
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                          ),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                        Text(
                          'Seni Perang Sun Tzu',
                          style: TextStyle(
                            color: isDark ? AppTheme.darkTextSecondary : AppTheme.sepiaTextSecondary,
                            fontSize: 11,
                          ),
                        ),
                      ],
                    ),
                  ),

                  // Font size minus
                  IconButton(
                    icon: Icon(Icons.text_decrease, color: accentColor, size: 20),
                    tooltip: 'Perkecil Huruf',
                    onPressed: () {
                      ref.read(readerProvider.notifier).decreaseFontSize();
                    },
                  ),
                  // Font size plus
                  IconButton(
                    icon: Icon(Icons.text_increase, color: accentColor, size: 20),
                    tooltip: 'Perbesar Huruf',
                    onPressed: () {
                      ref.read(readerProvider.notifier).increaseFontSize();
                    },
                  ),
                  // Theme switch
                  IconButton(
                    icon: Icon(
                      isDark ? Icons.wb_sunny_outlined : Icons.nightlight_outlined,
                      color: accentColor,
                      size: 20,
                    ),
                    tooltip: isDark ? 'Tema Sepia' : 'Tema Gelap',
                    onPressed: () {
                      ref.read(readerProvider.notifier).toggleThemeMode();
                    },
                  ),
                  // Bookmark button
                  IconButton(
                    icon: Icon(
                      isBookmarked ? Icons.bookmark : Icons.bookmark_outline,
                      color: isBookmarked ? Colors.amber : accentColor,
                      size: 22,
                    ),
                    tooltip: isBookmarked ? 'Hapus Penanda' : 'Tandai Halaman',
                    onPressed: () {
                      ref.read(readerProvider.notifier).toggleBookmark(_currentPage);
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          duration: const Duration(seconds: 1),
                          behavior: SnackBarBehavior.floating,
                          content: Text(
                            isBookmarked
                                ? 'Penanda halaman dihapus'
                                : 'Halaman $_currentPage ditandai!',
                          ),
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
          ),

          // Bottom HUD & AdMob Banner
          AnimatedPositioned(
            duration: const Duration(milliseconds: 220),
            bottom: readerState.isControlsVisible ? 0 : -140,
            left: 0,
            right: 0,
            child: Container(
              color: hudBgColor,
              padding: EdgeInsets.only(
                left: 16,
                right: 16,
                top: 10,
                bottom: MediaQuery.of(context).padding.bottom + 6,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  // Page slider & indicator
                  Row(
                    children: [
                      Text(
                        'Hal. $_currentPage',
                        style: TextStyle(
                          color: accentColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 12,
                        ),
                      ),
                      Expanded(
                        child: SliderTheme(
                          data: SliderTheme.of(context).copyWith(
                            activeTrackColor: accentColor,
                            inactiveTrackColor: accentColor.withValues(alpha: 0.2),
                            thumbColor: accentColor,
                            thumbShape: const RoundSliderThumbShape(enabledThumbRadius: 6),
                            trackHeight: 3,
                          ),
                          child: Slider(
                            value: _currentPage.toDouble(),
                            min: 0,
                            max: (BookContent.totalPages - 1).toDouble(),
                            onChanged: (val) {
                              _goToPage(val.round());
                            },
                          ),
                        ),
                      ),
                      Text(
                        '/${BookContent.totalPages - 1}',
                        style: TextStyle(
                          color: isDark ? AppTheme.darkTextSecondary : AppTheme.sepiaTextSecondary,
                          fontSize: 12,
                        ),
                      ),
                      const SizedBox(width: 8),
                      // Quick TOC button
                      IconButton(
                        icon: Icon(Icons.list_alt, color: accentColor),
                        tooltip: 'Daftar Isi',
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (_) => const DaftarIsi()),
                          );
                        },
                      ),
                    ],
                  ),

                  // Bottom AdMob Banner
                  if (adsState.isBannerLoaded && adsState.bannerAd != null)
                    SizedBox(
                      width: adsState.bannerAd!.size.width.toDouble(),
                      height: adsState.bannerAd!.size.height.toDouble(),
                      child: AdWidget(ad: adsState.bannerAd!),
                    ),
                ],
              ),
            ),
          ),
        ],
      ),
    ),
  );
}

  Widget _buildPageContent(int pageIndex, ReaderState readerState, bool isDark, Color accentColor) {
    if (pageIndex == 0) {
      return const Cover();
    }
    if (pageIndex == 1) {
      return const DaftarIsi();
    }
    if (pageIndex == 112) {
      return const DaftarIstilah();
    }
    if (pageIndex == 113) {
      return const LastPage();
    }

    final chapter = BookContent.getChapterForPage(pageIndex);
    if (chapter == null) {
      return const Center(child: Text('Halaman tidak ditemukan'));
    }

    // Is it a chapter cover page (babX_0)?
    if (pageIndex == chapter.startPageIndex) {
      return _buildChapterCoverPage(chapter, isDark, accentColor);
    }

    // Content page
    final markdown = BookContent.getMarkdownData(pageIndex);
    if (markdown == null || markdown.isEmpty) {
      return const Center(child: Text('Konten bab tidak tersedia'));
    }

    return SafeArea(
      top: false,
      child: Padding(
        padding: const EdgeInsets.only(top: 60, bottom: 60),
        child: MarkDownku(
          teksData: markdown,
          fontSizeMultiplier: readerState.fontSizeMultiplier,
          themeMode: readerState.themeMode,
        ),
      ),
    );
  }

  Widget _buildChapterCoverPage(ChapterInfo chapter, bool isDark, Color accentColor) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/background_1.png'),
          fit: BoxFit.cover,
        ),
      ),
      child: Container(
        color: Colors.black.withValues(alpha: 0.6),
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 32),
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Spacer(),
              Image.asset(chapter.imageAsset, height: 110, width: 110),
              const SizedBox(height: 16),
              Text(
                chapter.numberTitle,
                style: GoogleFonts.cinzel(
                  color: Colors.white70,
                  fontSize: 18,
                  letterSpacing: 2,
                ),
              ),
              const SizedBox(height: 12),
              Text(
                chapter.title,
                style: GoogleFonts.merienda(
                  color: accentColor,
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1.2,
                ),
                textAlign: TextAlign.center,
              ),
              const Spacer(),
              Container(
                padding: const EdgeInsets.all(16),
                margin: const EdgeInsets.symmetric(horizontal: 16),
                decoration: BoxDecoration(
                  color: Colors.black45,
                  borderRadius: BorderRadius.circular(16),
                  border: Border.all(color: accentColor.withValues(alpha: 0.5), width: 1),
                ),
                child: Text(
                  chapter.quote,
                  style: GoogleFonts.notoSerif(
                    color: Colors.white,
                    fontSize: 15,
                    fontStyle: FontStyle.italic,
                    height: 1.5,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(height: 40),
            ],
          ),
        ),
      ),
    );
  }
}
