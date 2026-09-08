import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:share_plus/share_plus.dart';
import '../halaman/daftar_isi.dart';
import '../halaman/daftar_istilah.dart';
import '../halaman/last_page.dart';
import '../halaman/reader_screen.dart';
import '../providers/reader_provider.dart';
import '../theme/app_theme.dart';
import 'dukungan.dart';

class DrawerItems extends ConsumerWidget {
  const DrawerItems({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final readerState = ref.watch(readerProvider);
    final isDark = readerState.themeMode == ReaderThemeMode.dark;
    final accentColor = isDark ? AppTheme.darkGold : AppTheme.sepiaVermilion;

    return Container(
      color: isDark ? AppTheme.darkSurface : AppTheme.sepiaSurface,
      child: Column(
        children: [
          UserAccountsDrawerHeader(
            decoration: BoxDecoration(
              color: isDark ? AppTheme.darkBackground : AppTheme.sepiaCard,
            ),
            accountName: Text(
              'Seni Perang Sun Tzu',
              style: GoogleFonts.cinzel(
                color: accentColor,
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
            accountEmail: const Text(
              'Buku strategi perang klasik Tiongkok',
              style: TextStyle(fontSize: 12),
            ),
            currentAccountPicture: CircleAvatar(
              backgroundColor: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(4.0),
                child: Image.asset('assets/ikon_app.png'),
              ),
            ),
          ),
          Expanded(
            child: ListView(
              padding: EdgeInsets.zero,
              children: <Widget>[
                if (readerState.bookmarkPage > 0) ...[
                  ListTile(
                    leading: const Icon(Icons.bookmark, color: Colors.amber),
                    title: Text('Ke Penanda (Hal. ${readerState.bookmarkPage})'),
                    trailing: const Icon(Icons.arrow_forward_ios, size: 14),
                    onTap: () {
                      Navigator.of(context).pop();
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => ReaderScreen(initialPage: readerState.bookmarkPage),
                        ),
                      );
                    },
                  ),
                  ListTile(
                    leading: const Icon(Icons.bookmark_remove, color: Colors.redAccent),
                    title: const Text('Hapus Penanda'),
                    onTap: () {
                      ref.read(readerProvider.notifier).removeBookmark();
                      Navigator.of(context).pop();
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          duration: Duration(seconds: 1),
                          content: Text('Penanda halaman dihapus'),
                        ),
                      );
                    },
                  ),
                  const Divider(),
                ],
                ListTile(
                  leading: Icon(Icons.list_alt, color: accentColor),
                  title: const Text('Daftar Isi'),
                  trailing: const Icon(Icons.arrow_forward_ios, size: 14),
                  onTap: () {
                    Navigator.of(context).pop();
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (_) => const DaftarIsi()),
                    );
                  },
                ),
                ListTile(
                  leading: Icon(Icons.menu_book, color: accentColor),
                  title: const Text('Daftar Istilah'),
                  subtitle: const Text('Glosarium kata & istilah khusus'),
                  trailing: const Icon(Icons.arrow_forward_ios, size: 14),
                  onTap: () {
                    Navigator.of(context).pop();
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (_) => const DaftarIstilah()),
                    );
                  },
                ),
                ListTile(
                  leading: Icon(Icons.flag, color: accentColor),
                  title: const Text('Halaman Penutup'),
                  trailing: const Icon(Icons.arrow_forward_ios, size: 14),
                  onTap: () {
                    Navigator.of(context).pop();
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (_) => const LastPage()),
                    );
                  },
                ),
              ],
            ),
          ),
          const Divider(height: 1),
          ListTile(
            leading: const Icon(Icons.share, color: Colors.blue),
            title: const Text('Bagikan Aplikasi'),
            onTap: () {
              Navigator.of(context).pop();
              SharePlus.instance.share(
                ShareParams(
                  text:
                      'E-Book Seni Perang Sun Tzu :\nhttps://play.google.com/store/apps/details?id=com.ingsoon.tsunzu',
                  subject: 'Seni Perang Sun Tzu',
                ),
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.favorite, color: Colors.redAccent),
            title: const Text('Dukungan Donasi'),
            onTap: () {
              Navigator.of(context).pop();
              DukunganModal.show(context);
            },
          ),
          const SizedBox(height: 12),
        ],
      ),
    );
  }
}
