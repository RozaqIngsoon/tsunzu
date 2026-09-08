import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

enum ReaderThemeMode {
  dark,
  parchment,
}

class AppTheme {
  // --- Imperial Dark Theme (Default) ---
  static const Color darkBackground = Color(0xFF11141A);
  static const Color darkSurface = Color(0xFF191E28);
  static const Color darkCard = Color(0xFF202633);
  static const Color darkGold = Color(0xFFD4AF37);
  static const Color darkGoldLight = Color(0xFFF1D588);
  static const Color darkCinnabar = Color(0xFFC0392B);
  static const Color darkTextPrimary = Color(0xFFEDE8DE);
  static const Color darkTextSecondary = Color(0xFFA5ACB8);
  static const Color darkBorder = Color(0xFF2C3545);

  // --- Classical Parchment Theme (Daylight) ---
  static const Color sepiaBackground = Color(0xFFF6F1E8);
  static const Color sepiaSurface = Color(0xFFEDE5D8);
  static const Color sepiaCard = Color(0xFFE4DACB);
  static const Color sepiaVermilion = Color(0xFF8B2515);
  static const Color sepiaBronze = Color(0xFFA17228);
  static const Color sepiaTextPrimary = Color(0xFF26201B);
  static const Color sepiaTextSecondary = Color(0xFF635A52);
  static const Color sepiaBorder = Color(0xFFD7CCBD);

  static ThemeData getDarkTheme() {
    return ThemeData(
      useMaterial3: true,
      brightness: Brightness.dark,
      scaffoldBackgroundColor: darkBackground,
      colorScheme: const ColorScheme.dark(
        primary: darkGold,
        secondary: darkCinnabar,
        surface: darkSurface,
        onPrimary: Colors.black,
        onSurface: darkTextPrimary,
      ),
      appBarTheme: AppBarTheme(
        backgroundColor: darkSurface,
        elevation: 0,
        centerTitle: true,
        titleTextStyle: GoogleFonts.cinzel(
          color: darkGold,
          fontSize: 18,
          fontWeight: FontWeight.bold,
          letterSpacing: 1.2,
        ),
        iconTheme: const IconThemeData(color: darkGold),
      ),
      cardTheme: CardThemeData(
        color: darkCard,
        elevation: 2,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
          side: const BorderSide(color: darkBorder, width: 1),
        ),
      ),
      textTheme: TextTheme(
        headlineMedium: GoogleFonts.merienda(
          color: darkGold,
          fontWeight: FontWeight.bold,
        ),
        titleLarge: GoogleFonts.cinzel(
          color: darkTextPrimary,
          fontWeight: FontWeight.w600,
        ),
        bodyLarge: GoogleFonts.notoSerif(
          color: darkTextPrimary,
          fontSize: 16,
          height: 1.6,
        ),
        bodyMedium: GoogleFonts.notoSerif(
          color: darkTextSecondary,
          fontSize: 14,
          height: 1.5,
        ),
      ),
    );
  }

  static ThemeData getSepiaTheme() {
    return ThemeData(
      useMaterial3: true,
      brightness: Brightness.light,
      scaffoldBackgroundColor: sepiaBackground,
      colorScheme: const ColorScheme.light(
        primary: sepiaVermilion,
        secondary: sepiaBronze,
        surface: sepiaSurface,
        onPrimary: Colors.white,
        onSurface: sepiaTextPrimary,
      ),
      appBarTheme: AppBarTheme(
        backgroundColor: sepiaSurface,
        elevation: 0,
        centerTitle: true,
        titleTextStyle: GoogleFonts.cinzel(
          color: sepiaVermilion,
          fontSize: 18,
          fontWeight: FontWeight.bold,
          letterSpacing: 1.2,
        ),
        iconTheme: const IconThemeData(color: sepiaVermilion),
      ),
      cardTheme: CardThemeData(
        color: sepiaCard,
        elevation: 1,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
          side: const BorderSide(color: sepiaBorder, width: 1),
        ),
      ),
      textTheme: TextTheme(
        headlineMedium: GoogleFonts.merienda(
          color: sepiaVermilion,
          fontWeight: FontWeight.bold,
        ),
        titleLarge: GoogleFonts.cinzel(
          color: sepiaTextPrimary,
          fontWeight: FontWeight.w600,
        ),
        bodyLarge: GoogleFonts.notoSerif(
          color: sepiaTextPrimary,
          fontSize: 16,
          height: 1.6,
        ),
        bodyMedium: GoogleFonts.notoSerif(
          color: sepiaTextSecondary,
          fontSize: 14,
          height: 1.5,
        ),
      ),
    );
  }
}
