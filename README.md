# Aplikasi Flutter dengan Navigasi Lanjutan (Advanced Navigation)

 Aplikasi ini memiliki fitur navigasi lanjutan di mana pengguna dapat berpindah antara beberapa layar menggunakan tab navigasi bawah, dengan masing-masing tab memiliki tombol untuk menavigasi ke layar tertentu. Setiap layar juga menyediakan tombol untuk kembali ke layar utama yang berisi bottom navigation bar.

## Fitur Utama
- **Generate Screen** : Pengguna dapat membuat sejumlah layar sesuai inputan (1-200 layar)
- **Validasi Input**: Menjamin input pengguna sesuai dengan batasan yang ditentukan
- **Navigasi Antar Layar**: Memungkinkan perpindahan antar layar yang dibangkitkan
- **Tombol Navigasi Kondisional**: Tombol Next dan Previous muncul sesuai posisi laya

## Alur Penggunaan
- **Layar Utama**: Saat aplikasi dibuka, pengguna melihat layar input untuk membuat layar dinamis.
- **Input Jumlah Screen**: Pengguna memasukkan jumlah layar yang ingin dibuat (1-200).
- **Generate Layar**: Setelah input divalidasi, daftar layar akan dibuat.
- **Navigasi Antar Layar**: Pengguna dapat memilih layar dari daftar atau bernavigasi menggunakan tombol Next/Previous.
- **Kembali ke Layar Awal**: Tersedia tombol kembali di setiap layar untuk reset navigasi.

## Prasyarat
- Flutter SDK 3.24.5
- Dart 3.5.4

## Struktur Proyek
1. **lib/main.dart**: Mengatur rute navigasi dan konfigurasi awal aplikasi
2. **lib/first_screen.dart**: Layar input untuk membangkitkan layar dinamis
3. **lib/dynamic_screen.dart**: Menampilkan daftar layar yang dibangkitkan
4. **lib/generated_screen.dart**: Layar dinamis yang dapat diakses pengguna
5. **lib/second_screen.dart**: Layar navigasi statis tambahan
6. **lib/third_screen.dart**: Layar navigasi statis lainnya
## Instalasi

1. Clone repositori ini atau unduh file proyeknya.

   ```bash
   git clone https://github.com/veryepiccindeed/vispro-lab11.git

2. Buka direktori proyek dan jalankan perintah berikut untuk menginstal dependensi:

   ```bash
   flutter pub get

3. Jalankan aplikasi di emulator atau perangkat fisik:
    ```bash
   flutter run

## Pendekatan
Aplikasi ini menggunakan pendekatan navigasi berbasis rute dengan fokus pada fleksibilitas dan kemudahan penggunaan. Teknik utama yang digunakan meliputi:

- **Navigator.pushNamed**: Untuk navigasi antar layar dengan rute dinamis
- **Validasi Input**: Menggunakan int.tryParse() untuk memastikan input valid
- **Manajemen State**: Mengirim argumen antar layar untuk melacak posisi dan total layar
- **Navigasi Kondisional**: Menampilkan tombol Next/Previous berdasarkan posisi layar saat ini

## Tantangan 
**1. Validasi Input Dinamis:**
Merancang sistem validasi yang ketat namun fleksibel untuk membatasi jumlah layar yang dapat dibuat.

**2. Navigasi Dinamis:**
Membangun sistem navigasi yang dapat menangani sejumlah layar yang tidak ditentukan sebelumnya dengan lancar.

**3. Manajemen Memori:**
Memastikan kinerja aplikasi tetap optimal saat membuat dan mengelola banyak layar secara dinamis.

**4. Konsistensi Pengalaman Pengguna:**
Menjaga kemudahan penggunaan dan intuitivitas navigasi meskipun jumlah layar bervariasi.