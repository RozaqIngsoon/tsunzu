import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../providers/reader_provider.dart';
import '../theme/app_theme.dart';

class NoHalaman extends ConsumerWidget {
  final List<Widget> pages;
  final Widget itemOfPages;
  final String bab;
  final VoidCallback fungsiOpenDrawer;

  const NoHalaman({
    super.key,
    required this.pages,
    required this.itemOfPages,
    required this.bab,
    required this.fungsiOpenDrawer,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final pageIndex = pages.indexOf(itemOfPages);
    final readerState = ref.watch(readerProvider);
    final isBookmarked = readerState.bookmarkPage == pageIndex;
    final isDark = readerState.themeMode == ReaderThemeMode.dark;
    final accentColor = isDark ? AppTheme.darkGold : AppTheme.sepiaVermilion;

    return Container(
      height: 50,
      color: isDark ? AppTheme.darkSurface : AppTheme.sepiaSurface,
      padding: const EdgeInsets.symmetric(vertical: 3, horizontal: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            bab,
            style: TextStyle(
              color: accentColor,
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.w500,
            ),
          ),
          InkWell(
            onTap: fungsiOpenDrawer,
            child: SizedBox(
              width: 44,
              height: 44,
              child: Icon(Icons.menu_book, size: 22, color: accentColor),
            ),
          ),
          InkWell(
            onTap: () {
              ref.read(readerProvider.notifier).toggleBookmark(pageIndex);
            },
            child: SizedBox(
              width: 44,
              height: 44,
              child: Icon(
                isBookmarked ? Icons.bookmark : Icons.bookmark_outline,
                size: 22,
                color: isBookmarked ? Colors.amber : accentColor,
              ),
            ),
          ),
          Text(
            pageIndex < 10 ? "0$pageIndex" : "$pageIndex",
            style: TextStyle(
              color: accentColor,
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.bold,
            ),
          )
        ],
      ),
    );
  }
}
