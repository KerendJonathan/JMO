
# Proyek Aplikasi Seluler Jaminan Sosial

## Ikhtisar

Aplikasi seluler ini menyediakan cara yang nyaman bagi pengguna untuk mengakses dan mengelola layanan jaminan sosial mereka. Aplikasi ini menawarkan dasbor yang mudah digunakan untuk melihat program terdaftar, mengakses layanan tambahan, dan tetap mendapatkan informasi terbaru tentang promosi dan pengumuman penting.

## Gaya, Desain, dan Fitur

### Versi 1.10: Implementasi Splash Screen

**Tujuan:** Untuk memperkenalkan splash screen yang menampilkan logo aplikasi selama satu detik sebelum mengarahkan pengguna ke halaman login.

**Perubahan Implementasi:**

*   **Pembuatan Splash Screen:**
    *   Membuat file `lib/screens/splash_screen.dart` yang berisi widget `SplashScreen`.
    *   Layar ini menampilkan gambar `assets/images/splash_screen.png`.
    *   Menggunakan `Timer` untuk secara otomatis mengarahkan ke rute `/login` setelah durasi 1 detik.
*   **Pembaruan Konfigurasi Router:**
    *   Memodifikasi `lib/navigation/app_router.dart` untuk mengatur `initialLocation` ke `/` (rute splash screen).
    *   Menambahkan `GoRoute` baru untuk jalur `/` yang me-render `SplashScreen`.
*   **Pembersihan Kode:**
    *   Menghapus impor `splash_screen.dart` yang tidak digunakan dari `lib/main.dart` untuk mengatasi peringatan diagnostik.

### Versi 1.9: Perbaikan Peringatan Diagnostik

**Tujuan:** Untuk mengatasi peringatan diagnostik terkait praktik terbaik `const` dan penggunaan API yang sudah usang untuk meningkatkan kualitas dan kinerja kode.

### Versi 1.8: Peningkatan Halaman Kontak - FAQ Interaktif dan Pop-up Obrolan Langsung

**Tujuan:** Untuk meningkatkan interaktivitas dan kegunaan Halaman Kontak dengan memperkenalkan FAQ yang dapat diperluas dan jendela pop-up untuk fitur Obrolan Langsung.

### Versi 1.7: Validasi Formulir Login

**Tujuan:** Untuk mengimplementasikan validasi pada kolom email dan kata sandi di layar login untuk memastikan integritas data dan memberikan umpan balik kepada pengguna.

### Versi 1.6: Desain Ulang UI/UX untuk Berita, Kontak, dan Profil

**Tujuan:** Merombak total bagian Berita, Kontak, dan Profil untuk menciptakan pengalaman pengguna yang modern, menarik secara visual, dan fungsional.

### Versi 1.5: Pembaruan Logo Beranda

**Tujuan:** Untuk mengganti logo placeholder di layar beranda dengan logo khusus dan menerapkan gaya visual yang diperbarui.

### Versi 1.4: Desain Ulang Halaman Login

**Tujuan:** Untuk menyelaraskan halaman login secara visual dengan desain mockup yang disediakan.

### Versi 1.3: Halaman Login Awal

**Tujuan:** Untuk memperkenalkan halaman login sebagai titik masuk awal ke dalam aplikasi.

### Versi 1.2: Perbaikan Bug dan Verifikasi Aset

**Tujuan:** Untuk mengatasi error runtime dan memastikan semua aset ditampilkan dengan benar.

### Versi 1.1: Bilah Navigasi Bawah

**Tujuan:** Untuk meningkatkan kegunaan aplikasi dengan menambahkan bilah navigasi bawah.

### Versi 1.0: Desain Awal dan Penjajaran Merek

**Tujuan:** Untuk membangun versi awal aplikasi dengan antarmuka yang modern dan selaras dengan logo aplikasi.
