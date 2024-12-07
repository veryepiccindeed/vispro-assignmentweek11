# Aplikasi Flutter dengan Navigasi Lanjutan (Advanced Navigation)

 Aplikasi ini memiliki fitur navigasi lanjutan di mana pengguna dapat berpindah antara beberapa layar menggunakan tab navigasi bawah, dengan masing-masing tab memiliki tombol untuk menavigasi ke layar tertentu. Setiap layar juga menyediakan tombol untuk kembali ke layar utama yang berisi bottom navigation bar.

## Fitur Utama
- **Bottom Navigation Bar**: Terdapat tiga tab utama, yaitu **First Screen**, **Second Screen**, dan **Third Screen** yang memungkinkan navigasi antar layar.
- **Navigasi dengan Push**: Setiap tab memiliki tombol untuk menavigasi ke layar baru.
- **Navigasi Kembali dengan Pop**: Layar-layar baru yang dibuka dapat kembali ke layar utama menggunakan tombol "Go Back" yang ada di setiap layar.
- **Navigasi Dinamis**: Navigasi dilakukan secara dinamis berdasarkan tab yang dipilih, dengan menggunakan `Navigator.push` untuk navigasi dan `Navigator.pop` untuk kembali.

## Alur Penggunaan
1. **Layar Utama**: Ketika aplikasi dibuka, layar utama akan menampilkan bottom navigation bar dengan tiga tab: **First Screen**, **Second Screen**, dan **Third Screen**.
2. **Navigasi ke First Screen**: Pada tab **First Screen**, terdapat tombol yang dapat diklik untuk memulai navigasi ke **First Screen**.
3. **Navigasi ke Second Screen**: Pada tab **Second Screen**, terdapat tombol yang dapat diklik untuk memulai navigasi ke **Second Screen**.
4. **Navigasi ke Third Screen**: Pada tab **Third Screen**, terdapat tombol yang dapat diklik untuk memulai navigasi ke **Third Screen**.
4. **Tombol Kembali**: Ketika berada di **First Screen**, **Second Screen**, atau **Third Screen** pengguna dapat menekan tombol "Go Back" untuk kembali ke layar utama dengan bottom navigation bar.

## Prasyarat
- Flutter SDK 3.24.5
- Dart 3.5.4

## Struktur Proyek
1. **lib/main.dart**: Berisi Layar Main dan mengatur named routes serta initial route (rute awal).
2. **lib/first_screen.dart**: Berisi widget FirstScreen dengan navigasi ke Layar Pertama.
3. **lib/second_screen.dart**: Berisi widget SecondScreen dengan navigasi ke Layar Kedua.
4. **lib/third_screen.dart**: Berisi widget ThirdScreen dengan navigasi ke Layar Ketiga.

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
Pada aplikasi ini, pendekatan navigasi menggunakan Navigator.push dan Navigator.pop dipadukan dengan Bottom Navigation Bar untuk menciptakan pengalaman navigasi yang fleksibel dan intuitif. Setiap tab pada navbar berfungsi sebagai pintu gerbang ke layar tertentu, dengan tombol tambahan untuk memindahkan pengguna ke layar tujuan. Pendekatan ini memanfaatkan:

1. Navigator.push: Untuk mendorong layar baru ke tumpukan navigasi.
2. Navigator.pop: Untuk kembali ke layar sebelumnya tanpa kehilangan status layar sebelumnya.
3. Bottom Navigation Bar: Untuk memberi pengguna akses cepat ke kategori utama.
4. Logika navigasi dirancang dengan currentPageIndex untuk melacak tab aktif, memungkinkan aplikasi untuk menampilkan tombol yang relevan dengan tab yang dipilih.


## Tantangan 
**1. Kesesuaian State dengan Tab Aktif:**
Sinkronisasi currentPageIndex dengan elemen-elemen yang ditampilkan membutuhkan perencanaan yang tepat agar setiap tab menampilkan konten yang sesuai.

**2. Navigasi Multi-Level:**
Pengelolaan tumpukan navigasi saat beralih antara layar yang berbeda melalui tombol dan kembali ke layar utama tanpa mengganggu pengalaman pengguna.

**3. Ekspansi untuk Tab Tambahan:**
Menambahkan tab baru memerlukan pembaruan logika navigasi, khususnya dalam menjaga keselarasan antara currentPageIndex, tombol, dan layar yang dipanggil.
