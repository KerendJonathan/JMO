
import 'package:flutter/material.dart';
import 'package:myapp/models/article.dart';

class Service {
  final IconData icon;
  final String title;
  final Color color;

  Service({required this.icon, required this.title, required this.color});
}

final List<Service> dummyServices = [
  Service(icon: Icons.card_membership, title: 'Kartu Digital', color: Colors.blue.shade800),
  Service(icon: Icons.document_scanner_outlined, title: 'Klaim Saldo JHT', color: Colors.green.shade800),
  Service(icon: Icons.business_center_outlined, title: 'Layanan Perusahaan', color: Colors.orange.shade800),
  Service(icon: Icons.people_alt_outlined, title: 'Mitra Layanan', color: Colors.purple.shade800),
  Service(icon: Icons.rate_review_outlined, title: 'Pengaduan', color: Colors.red.shade800),
  Service(icon: Icons.wallet_giftcard, title: 'Manfaat Lain', color: Colors.indigo.shade800),
  Service(icon: Icons.info_outline, title: 'Informasi', color: Colors.teal.shade800),
  Service(icon: Icons.more_horiz, title: 'Lainnya', color: Colors.grey.shade800),
];

final List<Article> dummyNews = [
  Article(
    title: 'BPJS Ketenagakerjaan Raih Penghargaan Internasional',
    description: 'BPJS Ketenagakerjaan kembali menorehkan prestasi di kancah internasional dengan meraih penghargaan... ',
    url: 'https://example.com/news1',
    urlToImage: 'https://picsum.photos/seed/news1/400/200',
    publishedAt: '2023-10-27T10:00:00Z',
    source: 'Antara News',
  ),
  Article(
    title: 'Manfaat Program Jaminan Pensiun Semakin Dirasakan Peserta',
    description: 'Program Jaminan Pensiun (JP) dari BPJS Ketenagakerjaan memberikan kepastian penghasilan bulanan bagi... ',
    url: 'https://example.com/news2',
    urlToImage: 'https://picsum.photos/seed/news2/400/200',
    publishedAt: '2023-10-26T14:30:00Z',
    source: 'Kompas.com',
  ),
    Article(
    title: 'Pentingnya Perlindungan Jaminan Kecelakaan Kerja',
    description: 'Setiap pekerjaan memiliki risiko, dan perlindungan Jaminan Kecelakaan Kerja (JKK) menjadi sangat penting... ',
    url: 'https://example.com/news3',
    urlToImage: 'https://picsum.photos/seed/news3/400/200',
    publishedAt: '2023-10-25T09:00:00Z',
    source: 'Detik Finance',
  ),
    Article(
    title: 'Digitalisasi Layanan, Cara BPJSTK Tingkatkan Kepuasan Peserta',
    description: 'Melalui aplikasi JMO, BPJS Ketenagakerjaan terus berupaya memberikan kemudahan akses layanan... ',
    url: 'https://example.com/news4',
    urlToImage: 'https://picsum.photos/seed/news4/400/200',
    publishedAt: '2023-10-24T18:00:00Z',
    source: 'CNN Indonesia',
  ),
];
