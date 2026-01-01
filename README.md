
# JMO Mobile App Clone

**Dibuat oleh: Kerend Jonathan**

---

### **Pemberitahuan**
Aplikasi ini adalah sebuah klon yang dibuat untuk tujuan pembelajaran dan pengembangan portofolio. Ini bukan aplikasi resmi JMO (Jaminan Sosial) dan tidak terhubung dengan BPJS Ketenagakerjaan.

---

## 📜 Ikhtisar Proyek

Aplikasi JMO Mobile App Clone ini adalah replikasi dari aplikasi JMO yang bertujuan untuk menyediakan antarmuka yang modern dan ramah pengguna bagi peserta layanan jaminan sosial. Proyek ini dibangun sepenuhnya menggunakan Flutter dan dirancang untuk menunjukkan kemampuan pengembangan aplikasi seluler lintas platform (Android, iOS, Web).

Fokus utama proyek ini adalah menciptakan pengalaman pengguna yang intuitif, mulai dari proses login, melihat dasbor, hingga mengakses berbagai layanan informasi.

## ✨ Fitur Utama

Aplikasi ini dilengkapi dengan berbagai fitur yang telah diimplementasikan, antara lain:

*   **Splash Screen:** Layar pembuka yang menampilkan logo aplikasi untuk memberikan kesan pertama yang profesional.
*   **Halaman Login:** Halaman masuk yang aman dengan validasi email dan kata sandi.
*   **Dasbor Utama:** Tampilan utama yang informatif setelah pengguna berhasil login.
*   **Navigasi Intuitif:** Dilengkapi dengan bilah navigasi bawah untuk perpindahan antar menu yang mudah.
*   **Halaman Berita:** Menampilkan daftar berita atau artikel terkini (saat ini dengan data statis).
*   **Detail Berita:** Halaman untuk membaca isi lengkap dari sebuah artikel.
*   **Halaman Kontak & Bantuan:**
    *   **FAQ Interaktif:** Daftar pertanyaan yang sering diajukan (FAQ) dalam format *expansion tile* yang mudah digunakan.
    *   **Pop-up Obrolan Langsung:** Tombol *floating action button* untuk memunculkan simulasi jendela obrolan langsung dari bawah layar.
*   **Halaman Profil:** Halaman untuk menampilkan informasi pengguna (desain statis).
*   **Desain Responsif:** Antarmuka yang dirancang untuk beradaptasi dengan baik di berbagai ukuran layar.

## 🛠️ Teknologi yang Digunakan

*   **Framework:** Flutter
*   **Bahasa Pemrograman:** Dart
*   **Manajemen Rute:** `go_router`
*   **Manajemen State:** `provider`
*   **Arsitektur:** Struktur berbasis fitur untuk skalabilitas.

## 🚀 Memulai Proyek

Ikuti langkah-langkah di bawah ini untuk menjalankan proyek ini di lingkungan pengembangan lokal Anda.

### **Prasyarat**

Pastikan Anda telah menginstal perangkat lunak berikut:
*   [Flutter SDK](https://docs.flutter.dev/get-started/install) (versi 3.x atau lebih baru)
*   [Git](https://git-scm.com/downloads)
*   IDE seperti [Visual Studio Code](https://code.visualstudio.com/) atau [Android Studio](https://developer.android.com/studio).

### **Instalasi & Menjalankan**

1.  **Kloning Repositori:**
    Buka terminal Anda dan jalankan perintah berikut untuk mengkloning repositori ini.
    ```bash
    git clone https://github.com/KerendJonathan/JMO.git
    ```

2.  **Masuk ke Direktori Proyek:**
    ```bash
    cd JMO
    ```

3.  **Instal Dependensi:**
    Jalankan perintah Flutter berikut untuk mengunduh semua paket yang diperlukan.
    ```bash
    flutter pub get
    ```

4.  **Jalankan Aplikasi:**
    Hubungkan perangkat (emulator atau fisik) dan jalankan aplikasi dengan perintah:
    ```bash
    flutter run
    ```

Aplikasi sekarang akan berjalan di perangkat yang Anda pilih. Selamat mencoba!

