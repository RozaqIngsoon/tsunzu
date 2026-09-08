import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'halaman/cover.dart';
import 'providers/reader_provider.dart';
import 'theme/app_theme.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  MobileAds.instance.initialize();
  runApp(
    const ProviderScope(
      child: MyApp(),
    ),
  );
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final readerState = ref.watch(readerProvider);
    final isDark = readerState.themeMode == ReaderThemeMode.dark;

    return MaterialApp(
      title: 'Seni Perang Sun Tzu',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.getSepiaTheme(),
      darkTheme: AppTheme.getDarkTheme(),
      themeMode: isDark ? ThemeMode.dark : ThemeMode.light,
      home: const Cover(),
    );
  }
}
