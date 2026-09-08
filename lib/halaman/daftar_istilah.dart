import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import '../providers/reader_provider.dart';
import '../theme/app_theme.dart';

class GlossaryItem {
  final String term;
  final String definition;
  final String? category;

  const GlossaryItem({
    required this.term,
    required this.definition,
    this.category,
  });
}

class DaftarIstilah extends ConsumerStatefulWidget {
  const DaftarIstilah({super.key});

  @override
  ConsumerState<DaftarIstilah> createState() => _DaftarIstilahState();
}

class _DaftarIstilahState extends ConsumerState<DaftarIstilah> {
  final TextEditingController _searchController = TextEditingController();
  String _query = '';

  static const List<GlossaryItem> allTerms = [
    GlossaryItem(
      term: 'Deviasi',
      category: 'Strategi & Taktik',
      definition: 'Kemampuan untuk menyesuaikan diri, mengubah rencana, atau mengatasi situasi yang tidak sesuai dengan proyeksi awal.',
    ),
    GlossaryItem(
      term: 'Disposisi',
      category: 'Militer',
      definition: 'Pengorganisasian dan penempatan pasukan di medan perang (infanteri, kavaleri, pertahanan, komunikasi, logistik) serta penyesuaian taktis terhadap pergerakan musuh.',
    ),
    GlossaryItem(
      term: 'Falcon (Alap-alap)',
      category: 'Fauna Simbolik',
      definition: 'Burung pemangsa dalam keluarga Falconidae, simbol kecepatan kilat dan ketepatan kalkulasi berburu tanpa ampun.',
    ),
    GlossaryItem(
      term: 'Konstelasi di Bulan (Sieve, Wall, Wing, Cross-bar)',
      category: 'Astronomi & Alam',
      definition: 'Formasi geologis di permukaan Bulan yang digunakan dalam perumpamaan Sun Tzu:\n• Sieve: Area kawah-kawah kecil berdekatan (saringan).\n• Wall: Struktur panjang menjulang akibat patahan kerak Bulan.\n• Wing: Struktur menonjol akibat aliran lava mendingin.\n• Cross-bar: Palang melintang di atas kawah.',
    ),
    GlossaryItem(
      term: 'Li',
      category: 'Pengukuran Kuno',
      definition: 'Satuan jarak tradisional Tiongkok. 1 Li setara dengan kurang lebih 500 meter.',
    ),
    GlossaryItem(
      term: 'Picul',
      category: 'Pengukuran Kuno',
      definition: 'Satuan berat kuno Tiongkok untuk logistik (beras, perlengkapan). 1 picul setara dengan 133,33 pound atau sekitar 60,48 kilogram.',
    ),
    GlossaryItem(
      term: 'Superstitious (Takhayul)',
      category: 'Psikologi Pasukan',
      definition: 'Keyakinan tanpa dasar rasional atau ilmiah. Sun Tzu menekankan agar komandan tidak terpengaruh takhayul dan pertanda gaib dalam mengambil keputusan perang.',
    ),
    GlossaryItem(
      term: 'Yueh (Tentara Yueh)',
      category: 'Sejarah Militer',
      definition: 'Pasukan tangguh dari wilayah Yueh (Tiongkok kuno), dirujuk Sun Tzu sebagai contoh penerapan disiplin, formasi, dan prinsip taktis yang tangguh.',
    ),
  ];

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final readerState = ref.watch(readerProvider);
    final isDark = readerState.themeMode == ReaderThemeMode.dark;

    final bgColor = isDark ? AppTheme.darkBackground : AppTheme.sepiaBackground;
    final cardColor = isDark ? AppTheme.darkCard : AppTheme.sepiaCard;
    final accentColor = isDark ? AppTheme.darkGold : AppTheme.sepiaVermilion;
    final textColor = isDark ? AppTheme.darkTextPrimary : AppTheme.sepiaTextPrimary;
    final subtitleColor = isDark ? AppTheme.darkTextSecondary : AppTheme.sepiaTextSecondary;
    final borderColor = isDark ? AppTheme.darkBorder : AppTheme.sepiaBorder;

    final filtered = allTerms.where((item) {
      final q = _query.toLowerCase();
      return item.term.toLowerCase().contains(q) ||
          item.definition.toLowerCase().contains(q) ||
          (item.category?.toLowerCase().contains(q) ?? false);
    }).toList();

    return Scaffold(
      backgroundColor: bgColor,
      appBar: AppBar(
        backgroundColor: isDark ? AppTheme.darkSurface : AppTheme.sepiaSurface,
        title: Text(
          'Daftar Istilah',
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
          // Search box
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            color: isDark ? AppTheme.darkSurface : AppTheme.sepiaSurface,
            child: TextField(
              controller: _searchController,
              onChanged: (val) => setState(() => _query = val),
              style: TextStyle(color: textColor),
              decoration: InputDecoration(
                hintText: 'Cari istilah atau definisi...',
                hintStyle: TextStyle(color: subtitleColor),
                prefixIcon: Icon(Icons.search, color: accentColor),
                suffixIcon: _query.isNotEmpty
                    ? IconButton(
                        icon: const Icon(Icons.clear, size: 18),
                        onPressed: () {
                          _searchController.clear();
                          setState(() => _query = '');
                        },
                      )
                    : null,
                filled: true,
                fillColor: cardColor,
                contentPadding: const EdgeInsets.symmetric(vertical: 0, horizontal: 16),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: BorderSide(color: borderColor),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: BorderSide(color: borderColor),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: BorderSide(color: accentColor),
                ),
              ),
            ),
          ),

          Expanded(
            child: filtered.isEmpty
                ? Center(
                    child: Text(
                      'Tidak ada istilah yang cocok',
                      style: TextStyle(color: subtitleColor, fontSize: 15),
                    ),
                  )
                : ListView.builder(
                    padding: const EdgeInsets.all(16),
                    itemCount: filtered.length,
                    itemBuilder: (context, index) {
                      final item = filtered[index];
                      return Container(
                        margin: const EdgeInsets.only(bottom: 12),
                        padding: const EdgeInsets.all(16),
                        decoration: BoxDecoration(
                          color: cardColor,
                          borderRadius: BorderRadius.circular(14),
                          border: Border.all(color: borderColor),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Expanded(
                                  child: Text(
                                    item.term,
                                    style: GoogleFonts.cinzel(
                                      color: accentColor,
                                      fontSize: 17,
                                      fontWeight: FontWeight.bold,
                                      letterSpacing: 0.8,
                                    ),
                                  ),
                                ),
                                if (item.category != null)
                                  Container(
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 8,
                                      vertical: 3,
                                    ),
                                    decoration: BoxDecoration(
                                      color: accentColor.withValues(alpha: 0.12),
                                      borderRadius: BorderRadius.circular(8),
                                      border: Border.all(
                                        color: accentColor.withValues(alpha: 0.3),
                                        width: 0.8,
                                      ),
                                    ),
                                    child: Text(
                                      item.category!,
                                      style: TextStyle(
                                        color: accentColor,
                                        fontSize: 11,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ),
                              ],
                            ),
                            const SizedBox(height: 8),
                            const Divider(height: 1, thickness: 0.5),
                            const SizedBox(height: 8),
                            Text(
                              item.definition,
                              style: GoogleFonts.notoSerif(
                                color: textColor,
                                fontSize: 14.5,
                                height: 1.6,
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
          ),
        ],
      ),
    );
  }
}
