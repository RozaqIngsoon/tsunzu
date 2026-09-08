import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../theme/app_theme.dart';

class ReaderState {
  final int currentPage;
  final int bookmarkPage;
  final int lastReadPage;
  final double fontSizeMultiplier;
  final ReaderThemeMode themeMode;
  final bool isControlsVisible;

  const ReaderState({
    this.currentPage = 0,
    this.bookmarkPage = 0,
    this.lastReadPage = 0,
    this.fontSizeMultiplier = 1.0,
    this.themeMode = ReaderThemeMode.dark,
    this.isControlsVisible = true,
  });

  ReaderState copyWith({
    int? currentPage,
    int? bookmarkPage,
    int? lastReadPage,
    double? fontSizeMultiplier,
    ReaderThemeMode? themeMode,
    bool? isControlsVisible,
  }) {
    return ReaderState(
      currentPage: currentPage ?? this.currentPage,
      bookmarkPage: bookmarkPage ?? this.bookmarkPage,
      lastReadPage: lastReadPage ?? this.lastReadPage,
      fontSizeMultiplier: fontSizeMultiplier ?? this.fontSizeMultiplier,
      themeMode: themeMode ?? this.themeMode,
      isControlsVisible: isControlsVisible ?? this.isControlsVisible,
    );
  }
}

class ReaderNotifier extends StateNotifier<ReaderState> {
  ReaderNotifier() : super(const ReaderState()) {
    _loadPreferences();
  }

  static const String _bookmarkKey = 'PAGE_BOOKMARK';
  static const String _lastReadKey = 'PAGE_LAST_READ';
  static const String _fontSizeKey = 'READER_FONT_SIZE';
  static const String _themeModeKey = 'READER_THEME_MODE';

  Future<void> _loadPreferences() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      final bookmark = prefs.getInt(_bookmarkKey) ?? 0;
      final lastRead = prefs.getInt(_lastReadKey) ?? 0;
      final fontMultiplier = prefs.getDouble(_fontSizeKey) ?? 1.0;
      final themeIndex = prefs.getInt(_themeModeKey) ?? 0;

      state = state.copyWith(
        bookmarkPage: bookmark,
        lastReadPage: lastRead,
        fontSizeMultiplier: fontMultiplier,
        themeMode: themeIndex == 1 ? ReaderThemeMode.parchment : ReaderThemeMode.dark,
      );
    } catch (e) {
      debugPrint('Error loading reader preferences: $e');
    }
  }

  Future<void> setPage(int page) async {
    if (state.currentPage == page) return;
    state = state.copyWith(currentPage: page);

    // Save as last read if it's an actual reading page (page >= 2)
    if (page >= 2) {
      state = state.copyWith(lastReadPage: page);
      try {
        final prefs = await SharedPreferences.getInstance();
        await prefs.setInt(_lastReadKey, page);
      } catch (e) {
        debugPrint('Error saving last read page: $e');
      }
    }
  }

  Future<void> toggleBookmark(int page) async {
    final newBookmark = (state.bookmarkPage == page) ? 0 : page;
    state = state.copyWith(bookmarkPage: newBookmark);

    try {
      final prefs = await SharedPreferences.getInstance();
      await prefs.setInt(_bookmarkKey, newBookmark);
    } catch (e) {
      debugPrint('Error saving bookmark: $e');
    }
  }

  Future<void> removeBookmark() async {
    state = state.copyWith(bookmarkPage: 0);
    try {
      final prefs = await SharedPreferences.getInstance();
      await prefs.setInt(_bookmarkKey, 0);
    } catch (e) {
      debugPrint('Error clearing bookmark: $e');
    }
  }

  Future<void> increaseFontSize() async {
    final next = (state.fontSizeMultiplier + 0.1).clamp(0.85, 1.5);
    state = state.copyWith(fontSizeMultiplier: next);
    _saveFontSize(next);
  }

  Future<void> decreaseFontSize() async {
    final next = (state.fontSizeMultiplier - 0.1).clamp(0.85, 1.5);
    state = state.copyWith(fontSizeMultiplier: next);
    _saveFontSize(next);
  }

  Future<void> _saveFontSize(double size) async {
    try {
      final prefs = await SharedPreferences.getInstance();
      await prefs.setDouble(_fontSizeKey, size);
    } catch (e) {
      debugPrint('Error saving font size: $e');
    }
  }

  Future<void> toggleThemeMode() async {
    final newMode = state.themeMode == ReaderThemeMode.dark
        ? ReaderThemeMode.parchment
        : ReaderThemeMode.dark;
    state = state.copyWith(themeMode: newMode);

    try {
      final prefs = await SharedPreferences.getInstance();
      await prefs.setInt(_themeModeKey, newMode == ReaderThemeMode.parchment ? 1 : 0);
    } catch (e) {
      debugPrint('Error saving theme mode: $e');
    }
  }

  void toggleControls() {
    state = state.copyWith(isControlsVisible: !state.isControlsVisible);
  }

  void showControls() {
    if (!state.isControlsVisible) {
      state = state.copyWith(isControlsVisible: true);
    }
  }

  void hideControls() {
    if (state.isControlsVisible) {
      state = state.copyWith(isControlsVisible: false);
    }
  }
}

final readerProvider = StateNotifierProvider<ReaderNotifier, ReaderState>((ref) {
  return ReaderNotifier();
});
