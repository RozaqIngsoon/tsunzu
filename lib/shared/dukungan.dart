import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gal/gal.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:share_plus/share_plus.dart';
import '../theme/app_theme.dart';

class DukunganModal extends StatefulWidget {
  const DukunganModal({super.key});

  static Future<void> show(BuildContext context) {
    return showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (ctx) => const DukunganModal(),
    );
  }

  @override
  State<DukunganModal> createState() => _DukunganModalState();
}

class _DukunganModalState extends State<DukunganModal> {
  bool _isSaving = false;

  Future<void> _simpanKeGaleri() async {
    setState(() => _isSaving = true);
    try {
      final byteData = await rootBundle.load('assets/qris.jpg');
      final bytes = byteData.buffer.asUint8List();

      final hasAccess = await Gal.hasAccess();
      if (!hasAccess) {
        await Gal.requestAccess();
      }

      await Gal.putImageBytes(bytes, name: 'ingsoon_qris');

      if (!mounted) return;
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          behavior: SnackBarBehavior.floating,
          backgroundColor: Color(0xFF1E7E34),
          content: Row(
            children: [
              Icon(Icons.check_circle, color: Colors.white),
              SizedBox(width: 10),
              Expanded(
                  child: Text('QRIS Ingsoon berhasil disimpan ke galeri!')),
            ],
          ),
        ),
      );
    } catch (e) {
      if (!mounted) return;
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          behavior: SnackBarBehavior.floating,
          backgroundColor: Colors.red.shade800,
          content: Text('Gagal menyimpan gambar: $e'),
        ),
      );
    } finally {
      if (mounted) setState(() => _isSaving = false);
    }
  }

  void _tampilkanGambarBesar(BuildContext context) {
    showDialog(
      context: context,
      barrierColor: Colors.black.withValues(alpha: 0.85),
      builder: (ctx) {
        return Dialog(
          backgroundColor: Colors.transparent,
          insetPadding:
              const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
          child: Stack(
            alignment: Alignment.center,
            children: [
              Container(
                constraints: BoxConstraints(
                  maxWidth: MediaQuery.of(ctx).size.width * 0.92,
                  maxHeight: MediaQuery.of(ctx).size.height * 0.75,
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(16),
                  boxShadow: [
                    BoxShadow(
                      color: AppTheme.darkGold.withValues(alpha: 0.4),
                      blurRadius: 25,
                      spreadRadius: 4,
                    ),
                  ],
                ),
                padding: const EdgeInsets.all(16),
                child: InteractiveViewer(
                  minScale: 1.0,
                  maxScale: 4.0,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(
                      'assets/qris.jpg',
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 0,
                right: 0,
                child: Material(
                  color: Colors.black87,
                  shape: const CircleBorder(),
                  child: IconButton(
                    icon:
                        const Icon(Icons.close, color: Colors.white, size: 24),
                    tooltip: 'Tutup',
                    onPressed: () => Navigator.of(ctx).pop(),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        top: 20,
        left: 20,
        right: 20,
        bottom: MediaQuery.of(context).viewInsets.bottom + 24,
      ),
      decoration: const BoxDecoration(
        color: AppTheme.darkSurface,
        borderRadius: BorderRadius.vertical(top: Radius.circular(24)),
        border: Border(
          top: BorderSide(color: AppTheme.darkGold, width: 1.5),
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          // Drag handle
          Center(
            child: Container(
              width: 48,
              height: 4,
              decoration: BoxDecoration(
                color: Colors.white24,
                borderRadius: BorderRadius.circular(2),
              ),
            ),
          ),
          const SizedBox(height: 16),

          // Header
          Row(
            children: [
              Image.asset('assets/ikon_qris.png', height: 20),
              const SizedBox(width: 8),
              Text(
                'Dukungan Komunitas',
                style: GoogleFonts.cinzel(
                  color: AppTheme.darkGold,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Spacer(),
              IconButton(
                icon: const Icon(Icons.close, color: Colors.white70),
                onPressed: () => Navigator.of(context).pop(),
              ),
            ],
          ),
          const Divider(color: AppTheme.darkBorder),
          const SizedBox(height: 10),

          Text(
            'Buku ini gratis untuk semua pembaca. Kontribusi 5.000 perak dari Anda sangat berarti untuk memelihara server dan riset karya-karya klasik berikutnya.',
            style: GoogleFonts.notoSerif(
              color: AppTheme.darkTextSecondary,
              fontSize: 14,
              height: 1.5,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 16),

          // QRIS Image with golden border (clickable to zoom)
          GestureDetector(
            onTap: () => _tampilkanGambarBesar(context),
            child: MouseRegion(
              cursor: SystemMouseCursors.click,
              child: Container(
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(16),
                  boxShadow: [
                    BoxShadow(
                      color: AppTheme.darkGold.withValues(alpha: 0.2),
                      blurRadius: 15,
                      spreadRadius: 2,
                    ),
                  ],
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.asset(
                    'assets/qris.jpg',
                    height: 200,
                    fit: BoxFit.contain,
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(height: 8),
          GestureDetector(
            onTap: () => _tampilkanGambarBesar(context),
            child: MouseRegion(
              cursor: SystemMouseCursors.click,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Icon(Icons.zoom_in, size: 14, color: AppTheme.darkGold),
                  const SizedBox(width: 4),
                  Text(
                    'Ketuk gambar untuk memperbesar',
                    style: GoogleFonts.notoSerif(
                      color: AppTheme.darkGold.withValues(alpha: 0.8),
                      fontSize: 11,
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 16),

          // Actions
          Row(
            children: [
              Expanded(
                child: ElevatedButton.icon(
                  onPressed: _isSaving ? null : _simpanKeGaleri,
                  icon: _isSaving
                      ? const SizedBox(
                          width: 16,
                          height: 16,
                          child: CircularProgressIndicator(
                              strokeWidth: 2, color: Colors.black),
                        )
                      : const Icon(Icons.download, color: Colors.black),
                  label: Text(
                    _isSaving ? 'Menyimpan...' : 'Simpan ke Galeri',
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.black),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppTheme.darkGold,
                    padding: const EdgeInsets.symmetric(vertical: 12),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 12),
              OutlinedButton.icon(
                onPressed: () {
                  SharePlus.instance.share(
                    ShareParams(
                      uri: Uri.parse(
                        'https://play.google.com/store/apps/details?id=com.ingsoon.tsunzu',
                      ),
                      title: 'Seni Perang Sun Tzu',
                    ),
                  );
                },
                icon: const Icon(Icons.share, color: AppTheme.darkGold),
                label: const Text(
                  'Bagikan',
                  style: TextStyle(color: AppTheme.darkGold),
                ),
                style: OutlinedButton.styleFrom(
                  side: const BorderSide(color: AppTheme.darkGold),
                  padding:
                      const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          Text(
            'Scan via e-wallet atau M-Banking apapun.',
            style: TextStyle(color: Colors.grey.shade500, fontSize: 11),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}

// Backward compatibility widget for any existing dialog invocation
class Dukungan extends StatelessWidget {
  const Dukungan({super.key});

  @override
  Widget build(BuildContext context) {
    return const DukunganModal();
  }
}
