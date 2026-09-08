import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:google_fonts/google_fonts.dart';
import '../theme/app_theme.dart';

class MarkDownku extends StatelessWidget {
  const MarkDownku({
    super.key,
    required this.teksData,
    this.fontSizeMultiplier = 1.0,
    this.themeMode = ReaderThemeMode.dark,
  });

  final String teksData;
  final double fontSizeMultiplier;
  final ReaderThemeMode themeMode;

  @override
  Widget build(BuildContext context) {
    final isDark = themeMode == ReaderThemeMode.dark;
    final primaryTextColor = isDark ? AppTheme.darkTextPrimary : AppTheme.sepiaTextPrimary;
    final accentColor = isDark ? AppTheme.darkGold : AppTheme.sepiaVermilion;
    final dividerColor = isDark ? AppTheme.darkBorder : AppTheme.sepiaBorder;

    final baseFontSize = 16.0 * fontSizeMultiplier;

    return Markdown(
      data: teksData,
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      styleSheet: MarkdownStyleSheet(
        p: GoogleFonts.notoSerif(
          fontSize: baseFontSize,
          color: primaryTextColor,
          height: 1.7,
          letterSpacing: 0.2,
        ),
        h1: GoogleFonts.merienda(
          fontSize: baseFontSize * 1.5,
          color: accentColor,
          fontWeight: FontWeight.bold,
          height: 1.4,
        ),
        h2: GoogleFonts.merienda(
          fontSize: baseFontSize * 1.3,
          color: accentColor,
          fontWeight: FontWeight.bold,
          height: 1.4,
        ),
        h3: GoogleFonts.cinzel(
          fontSize: baseFontSize * 1.15,
          color: accentColor,
          fontWeight: FontWeight.w700,
          letterSpacing: 0.8,
        ),
        h4: GoogleFonts.cinzel(
          fontSize: baseFontSize * 1.05,
          color: primaryTextColor,
          fontWeight: FontWeight.w600,
        ),
        listBullet: TextStyle(
          fontSize: baseFontSize,
          color: accentColor,
        ),
        strong: TextStyle(
          fontWeight: FontWeight.bold,
          color: accentColor,
        ),
        em: const TextStyle(
          fontStyle: FontStyle.italic,
        ),
        horizontalRuleDecoration: BoxDecoration(
          border: Border(
            top: BorderSide(
              width: 1.0,
              color: dividerColor,
            ),
          ),
        ),
        blockquoteDecoration: BoxDecoration(
          color: isDark ? AppTheme.darkCard : AppTheme.sepiaCard,
          borderRadius: BorderRadius.circular(8),
          border: Border(
            left: BorderSide(
              width: 4,
              color: accentColor,
            ),
          ),
        ),
        blockquotePadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      ),
    );
  }
}
