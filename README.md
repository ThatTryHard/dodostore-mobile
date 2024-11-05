# dodostore_mobile

## Tugas 7
* Jelaskan apa yang dimaksud dengan *stateless widget* dan *stateful widget*, dan jelaskan perbedaan dari keduanya.

    *Stateless Widget* adalah widget yang tidak memiliki kondisi yang berubah-ubah setelah widget pertama kali dibuat. Widget ini bersifat **statis** dan tidak akan berubah setelah di-*render*, sehingga cocok digunakan untuk *UI* yang tidak memerlukan perubahan data, seperti tombol dengan teks tetap atau ikon. Contoh dari widget stateless adalah `Text`, `Icon`, dan `Container`.

    *Stateful Widget*, di sisi lain, adalah widget yang memiliki kondisi yang dapat berubah-ubah seiring waktu, misalnya ketika ada interaksi pengguna atau perubahan data. Dengan kata lain, *Stateful Widget* memungkinkan perubahan tampilan *UI* secara **dinamis** sesuai dengan perubahan data. Contoh dari widget ini termasuk `Checkbox`, `TextField`, dan widget yang mengimplementasikan animasi.

* Sebutkan *widget* apa saja yang kamu gunakan pada proyek ini dan jelaskan fungsinya.

    Pada proyek ini, saya menggunakan beberapa widget yang digunakan beserta fungsinya adalah:
    
    - `AppBar`: Menampilkan *header* aplikasi, termasuk judul Dodostore.
    - `Scaffold`: Memberikan struktur dasar halaman, seperti `AppBar` dan body, dan menyediakan fitur *layout* untuk halaman.
    - `Text`: Menampilkan teks, misalnya untuk judul atau deskripsi.
    - `Icon`: Menampilkan ikon grafis, digunakan pada tombol untuk menampilkan ikon yang sesuai dengan fungsi tombol.
    - `Card`: Membuat kotak atau kartu dengan efek bayangan di sekelilingnya, berguna untuk menampilkan informasi dengan lebih rapi.
    - `GridView`: Menampilkan widget dalam bentuk *grid* atau kotak-kotak yang berbaris. Di sini digunakan untuk menampilkan item pada halaman utama.
    - `Material`: Memberikan tampilan *material* pada widget, sehingga bisa mendapatkan efek visual seperti bayangan atau bentuk melengkung.
    - `InkWell`: Menambahkan interaksi sentuhan pada widget, dengan contoh di program saya berupa efek *ripple* ketika diklik.
* Apa fungsi dari `setState()`? Jelaskan variabel apa saja yang dapat terdampak dengan fungsi tersebut.

    `setState()` adalah fungsi dalam Flutter yang digunakan untuk memberi tahu framework bahwa ada perubahan pada state widget yang memerlukan pembaruan tampilan. Ketika `setState()` dipanggil, Flutter akan menjadwalkan rebuild pada widget tersebut, memungkinkan perubahan untuk segera terlihat di UI. Fungsi ini sangat penting dalam `Stateful Widget` karena menjaga tampilan tetap responsif terhadap perubahan data atau interaksi pengguna. Misalnya, jika variabel seperti `searching` atau `resBody` mengalami perubahan dan perlu ditampilkan ulang di layar, pembaruan tersebut harus dibungkus dalam `setState()` agar terlihat di antarmuka pengguna.

    Variabel yang terdampak oleh `setState()` biasanya adalah variabel yang dideklarasikan di dalam kelas `Stateful Widget` itu sendiri dan yang mempengaruhi tampilan UI. Sebagai contoh, dalam proyek Floryn Shop, variabel seperti `items` dalam `MyHomePage` atau `title` dan `content` dalam `InfoCard` bersifat statis, sehingga tidak perlu diperbarui dengan `setState()`. Namun, jika variabel-variabel tersebut dibuat dinamis (misalnya, `items` bertambah atau `title` dan `content` otomatis diperbarui), `setState()` akan diperlukan untuk memperbarui UI sesuai perubahan tersebut. Menggunakan `setState()` secara selektif penting untuk menjaga performa aplikasi tetap optimal.
* Jelaskan perbedaan antara `const` dengan `final`.
    
  Perbedaan utama antara `const` dan `final` dalam Dart adalah kapan nilainya ditetapkan dan bagaimana sifatnya. Variabel `const` harus memiliki nilai yang sudah diketahui saat waktu kompilasi dan bersifat immutable, artinya nilainya tetap dan tidak bisa diubah selama runtime. Dengan `const`, nilai variabel harus ditentukan secara pasti di awal dan tidak dapat berubah dalam kondisi apa pun.

    Di sisi lain, variabel `final` juga hanya dapat diinisialisasi sekali, namun nilainya bisa ditentukan saat runtime, bukan harus pada waktu kompilasi. Ini memungkinkan `final` digunakan untuk nilai yang tetap setelah ditetapkan, tetapi nilainya bisa berasal dari hasil perhitungan atau proses yang baru diketahui saat aplikasi berjalan.

* Jelaskan bagaimana cara kamu mengimplementasikan *checklist-checklist* di atas

    1. Membuat sebuah program Flutter baru dengan tema *E-Commerce* yang sesuai dengan tugas-tugas sebelumnya.
        
        Program yang telah saya buat merupakan versi `mobile` dari aplikasi *dodostore* saya sebelumnya. Pertama, saya menginstall `flutter` dan `AndroidStudio`, yang merupakan aplikasi-aplikasi yang akan digunakan untuk tugas-tugas selanjutnya. Setelah melakukan konfigurasi untuk kedua aplikasi tersebut dengan menggunakan `flutter doctor`, saya membuka `Command prompt` dan menjalankan `flutter run` untuk membuat project baru pada direktori tertentu, kemudian saya merapikan struktur aplikasi saya dengan menambahkan `menu.dart` dan melakukan restruktur program saya, dan mengubah tema aplikasi saya menjadi lebih cenderung ke tema *e-commerce*.

    2. Membuat tiga tombol sederhana dengan ikon dan teks untuk:
        - Melihat daftar produk (`Lihat Daftar Produk`)
        - Menambah produk (`Tambah Produk`)
        - Logout (`Logout`)

        Pertama, saya membuat class `ItemHomepage` dengan atribut `name`, `icon`, dan `color` yang mengatur teks tombol, ikon, beserta warna latarnya, kemudian saya agregasikan `ItemHomepage` ke `ItemCard`, yakni class yang mengatur struktur tombol secara keseluruhan beserta penempatannya pada *widget*. Dan terakhir, saya lakukan *casting* ke `MyHomePage` untuk membuat tiga tombol yang sesuai. Tombol-tombol tersebut diperuntukkan pada melihat daftar produk, menambah produk, dan logout, yang belum terdapat fungsi spesifik didalamnya.

    3. Mengimplementasikan warna-warna yang berbeda untuk setiap tombol (`Lihat Daftar Produk`, `Tambah Produk`, dan `Logout`).

        Untuk implementasi warna yang berbeda, pertama saya menambahkan atribut `color` pada class `ItemHomepage`,pengaturan warna latar di method build di class `Widget`. Untuk menangkal hal itu saya menambahkan line `color: item.color`, agar pada saat objek di *cast*, kustomisasi warna latar dapat diimplementasikan.

        Lalu pada class `MyHomePage` saya melakukan *casting* sebagai berikut untuk menampilkan tombol dengan warna yang saya inginkan.
        ```dart
        final List<ItemHomepage> items = [
            ItemHomepage(
                "Lihat Product", Icons.format_list_bulleted_rounded, Colors.blue),
            ItemHomepage(
                "Tambah Product", Icons.add_shopping_cart_rounded, Colors.green),
            ItemHomepage("Logout", Icons.logout, Colors.red),
        ];
        ```
    4. Memunculkan Snackbar dengan tulisan:
        - "Kamu telah menekan tombol Lihat Daftar Produk" ketika tombol `Lihat Daftar Produk` ditekan.
        - "Kamu telah menekan tombol Tambah Produk" ketika tombol `Tambah Produk` ditekan.
        - "Kamu telah menekan tombol Logout" ketika tombol `Logout` ditekan.

        Pada blok `Widget build`, tambahkan class `SnackBar` yang berfungsi untuk menampilkan pesan sesuai tombol yang ditekan. Agar lebih interaktif, gunakan `InkWell` untuk memberikan efek saat tombol ditekan dan atur event listener dengan menambahkan sintaks `onTap` yang membungkus `SnackBar`. Setiap kali tombol ditekan, `ScaffoldMessenger` akan menampilkan `SnackBar` dengan pesan yang menyesuaikan nama tombol tersebut. Misalnya, ketika tombol "Lihat Daftar Produk" ditekan, pesan "Kamu telah menekan tombol Lihat Daftar Produk" akan muncul. Sesuaikan konten dan warna latar `SnackBar` untuk memperindah tampilannya, dan gunakan tag `${item.name}` agar pesan dinamis sesuai tombol yang ditekan.
## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
