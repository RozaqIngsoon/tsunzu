import 'package:flutter/material.dart';
import '../data/book_content.dart';
import 'cover.dart';
import 'daftar_isi.dart';
import 'daftar_istilah.dart';
import 'last_page.dart';
import 'reader_screen.dart';

const Widget cover = Cover();
const Widget daftarIsi = DaftarIsi();
const Widget daftarIstilah = DaftarIstilah();
const Widget lastPage = LastPage();

/// List of 114 pages indexed from 0 to 113 for backward compatibility
final List<Widget> halaman = List<Widget>.generate(
  BookContent.totalPages,
  (index) => ReaderScreen(initialPage: index),
);
