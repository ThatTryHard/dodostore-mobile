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

## Tugas 8
* Apa kegunaan `const` di *Flutter*? Jelaskan apa keuntungan ketika menggunakan `const` pada kode *Flutter*. Kapan sebaiknya kita menggunakan `const`, dan kapan sebaiknya tidak digunakan?

    `const` digunakan untuk mendefinisikan nilai atau *widget* yang bersifat konstan dan tidak akan berubah sepanjang siklus hidup aplikasi. Di *Flutter*, *widget* bersifat *immutable* yang berarti, tidak dapat diubah setelah dibuat, dan `const` memberi sinyal pada *Flutter* bahwa *widget* atau variabel yang didefinisikan tidak akan pernah berubah.

    keuntungan penggunaan dari `const` adalah:
    - **Optimalisasi Memori**: Ketika suatu *widget* atau variabel ditandai dengan `const`, *Flutter* akan menyimpan hanya satu *instance* dari *widget* tersebut di memori. Jadi, jika kita memiliki beberapa `Text("Hello")` yang ditandai `const`, *Flutter* hanya membuatnya satu kali dan menggunakan *instance* yang sama. Ini menghemat memori dan mengurangi waktu yang diperlukan untuk membuat *widget* baru.
    - **Mengurangi *Render* Ulang**: Karena *Flutter* mengetahui bahwa *widget* `const` tidak akan berubah, *widget* tersebut tidak perlu diperiksa atau di*render* ulang, sehingga aplikasi menjadi lebih efisien.
    - **Konsistensi**: Dengan `const`, kita dapat menjamin bahwa elemen-elemen tertentu di aplikasi tidak akan berubah karena *Flutter* akan memberi peringatan jika ada upaya untuk mengubahnya.

    `const` digunakan pada widget yang kontennya tidak berubah, seperti teks yang statis, ikon tetap, atau dekorasi tertentu serta pada nilai atau variabel yang tetap sepanjang waktu misalnya seperti `const int maxItems = 5;`. Sebaiknya jangan gunakan `const` jika konten *widget* atau nilai tersebut bersifat dinamis atau tergantung pada interaksi pengguna. Misalnya, teks yang berubah berdasarkan *input* atau daftar yang dapat diperbarui secara dinamis. Penggunaan `const` dalam konteks dinamis akan menyebabkan *error* karena *Flutter* tidak dapat mengubah nilai yang telah ditandai sebagai konstan.

* Jelaskan dan bandingkan penggunaan `Column` dan `Row` pada *Flutter*. Berikan contoh implementasi dari masing-masing *layout widget* ini!

    `Column` dan `Row` adalah dua *widget* tata letak dasar di *Flutter* yang memungkinkan kita menyusun *widget* anak secara vertikal dan horizontal.

    - `Column`: Mengatur *widget* anak dalam susunan vertikal, dari atas ke bawah. *Widget* ini cocok untuk tata letak seperti daftar atau formulir yang membutuhkan susunan dari atas ke bawah. Contohnya sebagai berikut:
        ```dart
        Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
                Text("Flutter"),
                Text("Column Widget"),
                Icon(Icons.star),
            ],
        )
        ```
        Properti yang penting pada saat menggunakan `Column` adalah:
        - `mainAxisAlignment`: Mengatur posisi *widget* anak di sepanjang sumbu utama (vertikal), seperti `MainAxisAlignment.center`, `spaceBetween`, atau `spaceAround`.
        - `crossAxisAlignment`: Mengatur posisi *widget* anak di sepanjang sumbu silang (horizontal), seperti `CrossAxisAlignment.start`, `center`, atau `end`.

    - `Row`: Menyusun *widget* anak dalam susunan horizontal, dari kiri ke kanan. Cocok untuk menampilkan elemen yang harus sejajar seperti tombol navigasi atau ikon yang bersebelahan. Contohnya sebagai berikut:
        ```dart
        Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
                Icon(Icons.home),
                Icon(Icons.search),
                Icon(Icons.settings),
            ],
        )
        ```
        Properti yang penting pada saat menggunakan `Row` adalah:
        - `mainAxisAlignment`: Mengatur posisi *widget* anak di sepanjang sumbu utama (horizontal), seperti `MainAxisAlignment.spaceEvenly`, `center`, atau `end`.
        - `crossAxisAlignment`: Mengatur posisi *widget* anak di sepanjang sumbu silang (vertikal), seperti `CrossAxisAlignment.start`, `center`, atau `stretch`.
    
    **Perbedaan Utama**: `Column` menyusun elemen secara vertikal sedangkan `Row` menyusun elemen secara horizontal. Pemilihan keduanya tergantung pada kebutuhan tata letak aplikasi; jika elemen perlu disusun sejajar dari atas ke bawah, gunakan `Column`, dan jika perlu dari kiri ke kanan, gunakan `Row`.

* Sebutkan apa saja elemen *input* yang kamu gunakan pada halaman *form* yang kamu buat pada tugas kali ini. Apakah terdapat elemen input *Flutter* lain yang tidak kamu gunakan pada tugas ini? Jelaskan!
    **Elemen Input yang Digunakan**
    - `TextFormField` - Terdapat tiga `TextFormField` yang digunakan untuk menerima input dari pengguna:
        - *Product*: *Field* ini menerima nama produk. *Validator* memastikan bahwa input tidak kosong.
        - *Price*: *Field* ini menerima harga produk dalam bentuk angka. *Validator* mengecek agar *field* ini tidak kosong dan memastikan input berupa angka.
        - *Description*: *Field* ini menerima deskripsi produk. *Validator* memastikan bahwa input tidak kosong.
        - *Amount*: *Field* ini menerima jumlah produk dalam bentuk angka. *Validator* mengecek agar *field* ini tidak kosong dan memastikan input berupa angka.
        - *Category*: *Field* ini menerima kategori produk. *Validator* memastikan bahwa input tidak kosong.
    - `ElevatedButton` - Sebuah tombol dengan label *Save* yang berfungsi untuk menyimpan data setelah semua *field* validasi terpenuhi. Ketika ditekan, tombol ini memicu validasi *form* dan menampilkan `AlertDialog` jika data berhasil disimpan.

    **Elemen Input Lain yang Tidak Digunakan**
    - Selain elemen-elemen di atas, *Flutter* menyediakan beberapa elemen input lain yang belum diimplementasikan dalam *form* ini. Berikut adalah beberapa elemen input tersebut beserta penjelasan kegunaannya:

    - `DropdownButtonFormField` - Digunakan untuk menampilkan daftar pilihan dalam bentuk dropdown. Contohnya, elemen ini bisa digunakan jika ingin menambahkan kategori produk pada form.

    - `Checkbox` - Elemen ini menampilkan kotak centang untuk 2 pilihan misalnya ya/tidak. Misalnya, bisa digunakan untuk meminta persetujuan pengguna terhadap syarat dan ketentuan.

    - `Switch` - Mirip dengan `Checkbox`, tetapi memiliki tampilan toggle (*switch*) untuk mengaktifkan atau menonaktifkan suatu opsi. `Switch` cocok untuk pengaturan yang melibatkan pilihan aktif/tidak aktif, misalnya untuk menandai apakah produk dalam stok atau tidak.

    - `Radio` - Elemen input ini cocok untuk pilihan terbatas yang bersifat eksklusif, artinya hanya satu pilihan yang dapat dipilih dalam satu kelompok. Sebagai contoh, bisa digunakan untuk memilih ukuran produk (misalnya S, M, L) di mana hanya satu ukuran dapat dipilih.

    - `Slider` - Digunakan untuk mengatur nilai dari suatu rentang tertentu dengan menggeser kursor. Contohnya, elemen ini bisa digunakan untuk input harga dengan rentang minimum dan maksimum.

    - `DatePicker` - *Flutter* menyediakan `showDatePicker()` sebagai cara untuk menerima input tanggal dari pengguna. Ini bisa digunakan jika ingin menambahkan tanggal kedaluwarsa produk.

    - `TimePicker` - Digunakan untuk menerima input waktu, cocok untuk aplikasi yang membutuhkan pengaturan waktu tertentu.

    - `TextField` dengan Tipe Keyboard Khusus - Meskipun sudah digunakan untuk angka dalam `TextFormField` di atas, *Flutter* memungkinkan pemilihan tipe keyboard lain seperti *e-mail*, telepon, atau password agar lebih sesuai dengan tipe data yang diinginkan.

    Elemen-elemen tambahan di atas tidak digunakan dalam *form* ini karena *form* hanya memerlukan input dasar berupa teks dan angka. Namun, elemen-elemen tersebut bisa dipertimbangkan jika *form* membutuhkan variasi input lebih kompleks atau sesuai dengan skenario input yang berbeda.

* Bagaimana cara kamu mengatur tema (*theme*) dalam aplikasi *Flutter* agar aplikasi yang dibuat konsisten? Apakah kamu mengimplementasikan tema pada aplikasi yang kamu buat?
    Saya mengatur tema secara konsisten di *Flutter* untuk menjaga tampilan aplikasi tetap harmonis dan profesional. Dalam *Flutter*, tema diatur melalui `ThemeData` yang diterapkan pada `MaterialApp`. `ThemeData` memungkinkan kita mengatur warna utama, warna aksen, gaya teks, ikon, serta elemen-elemen lain yang sering digunakan di aplikasi. Saya mengatur tema dengan cara:
    - Dalam `MaterialApp`, tambahkan properti theme dan inisialisasikan dengan `ThemeData`.
    - Tema saya diatur dalam `main.dart` sebagai berikut:
        ```dart
        theme: ThemeData(
            colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.cyan)
                .copyWith(secondary: Colors.grey[400]),
            ),
        ```
        - `ColorScheme`: Tema ini menggunakan `ColorScheme` yang dibuat dengan `fromSwatch`, di mana `primarySwatch` ditetapkan sebagai `Colors.cyan`. Hal ini menentukan skema warna utama untuk aplikasi, memberikan kesan konsisten pada elemen yang menggunakan warna utama.
        - `copyWith(secondary: Colors.grey[400])`: Fungsi `copyWith` digunakan untuk menambahkan atau mengubah warna sekunder (*secondary color*). Dalam hal ini, *secondary* diatur ke `Colors.grey[400]`. Warna sekunder ini dapat digunakan untuk elemen yang memerlukan aksen atau warna pelengkap, seperti ikon atau tombol sekunder.
    - Untuk implementasinya saya menambahkan atribut `backgroundColor: Theme.of(context).colorScheme.primary` untuk tiap `AppBar` untuk tiap *script* yang saya gunakan hingga saat ini.

* Bagaimana cara kamu menangani navigasi dalam aplikasi dengan banyak halaman pada *Flutter*?
    *Flutter* menggunakan `Navigator` sebagai mekanisme utama untuk navigasi antara halaman. `Navigator` berfungsi sebagai `stack` yang memungkinkan kita menambahkan halaman baru di atas halaman sebelumnya atau kembali ke halaman sebelumnya. Cara Menangani Navigasi yaitu dengan `Navigator`:
    - `Navigator.push`: Digunakan untuk menambahkan halaman baru ke `stack`. Biasanya, `Navigator.push` menerima context dan route sebagai parameter, di mana route mendefinisikan halaman baru yang akan ditampilkan.
    - `Navigator.pop`: Menghapus halaman yang ada di atas `stack` dan mengembalikan pengguna ke halaman sebelumnya. Biasanya dipanggil ketika pengguna ingin kembali atau menyelesaikan proses di halaman tertentu.

    Contoh implementasinya, dapat dilihat dari berkas `left_drawer.dart` berikut:
    ```dart
    ListTile(
            leading: const Icon(Icons.home_outlined),
            title: const Text('Halaman Utama'),
            onTap: () {
              Navigator.pop(context);
              Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MyHomePage(),
                  ));
            },
          ),
    ```
    Dengan ini, `ListTile` digunakan untuk memicu navigasi ketika item ditekan. Fungsi `Navigator.pushReplacement` digunakan untuk menggantikan halaman yang sedang aktif dengan halaman baru tanpa menyimpan halaman sebelumnya di dalam `stack`.
    - `Navigator.pop(context)`: Langkah ini menutup *drawer* sebelum melanjutkan ke halaman baru. Hal ini penting untuk menjaga antarmuka tetap rapi dan menghindari menampilkan *drawer* bersamaan dengan halaman baru.
    - `Navigator.pushReplacement`: Metode ini digunakan untuk mengganti halaman saat ini dengan halaman yang baru. Fungsi `pushReplacement` tidak menambahkan halaman ke dalam `stack` navigasi, melainkan menggantikan halaman yang ada, sehingga pengguna tidak dapat kembali ke halaman sebelumnya. Ini sangat bermanfaat untuk navigasi utama.

## Tugas 9

* Jelaskan mengapa kita perlu membuat model untuk melakukan pengambilan ataupun pengiriman data JSON? Apakah akan terjadi error jika kita tidak membuat model terlebih dahulu?

    Model memegang peran penting dalam Flutter untuk menjalankan operasi CRUD pada data JSON, karena memungkinkan data dikelola dalam struktur yang teratur dan mudah diakses. Dengan model, pengolahan data menjadi lebih efisien melalui penggunaan metode seperti `fromJson` dan `toJson`, yang mendukung proses parsing dan serialisasi data secara terstruktur. Selain itu, model membantu memastikan validasi data dengan menjamin setiap atribut memiliki format dan tipe yang sesuai dengan kebutuhan aplikasi, sehingga meningkatkan stabilitas dan keamanan.

    Tanpa menggunakan model, pengelolaan data JSON dapat menjadi sulit, terutama dalam aplikasi yang kompleks, karena struktur data yang tidak jelas berpotensi menimbulkan kesalahan *runtime*. Dengan adanya library seperti `json_serializable`, pembuatan model di Flutter menjadi lebih cepat dan mudah. Selain itu, model mempermudah integrasi dengan widget dan *state management* seperti Provider untuk menjaga konsistensi data yang ditampilkan pada antarmuka pengguna. Oleh sebab itu, model menjadi elemen krusial dalam memastikan pengelolaan data dalam aplikasi Flutter berjalan lancar.

* Jelaskan fungsi dari library `http` yang sudah kamu implementasikan pada tugas ini
    Penggunaan library HTTP dalam pengembangan aplikasi sangat penting untuk memungkinkan komunikasi antara aplikasi dan server melalui protokol HTTP. Berikut adalah penjelasan penggunaannya secara rinci:

    1. Mengirim Permintaan (Requests):
    
        Library HTTP digunakan untuk mengirim permintaan ke server. Contoh permintaan yang sering digunakan adalah:

        * GET: Untuk mengambil data dari server, seperti daftar produk, informasi pengguna, atau berita terbaru.
        * POST: Untuk mengirimkan data ke server, seperti formulir pendaftaran, data login, atau input pengguna lainnya.
    
    2. Mengelola Respons (Responses):
        
        Setelah permintaan dikirim, server akan mengirimkan respons yang biasanya berisi data dalam format JSON. Library HTTP membantu menangani respons ini sehingga data dapat diolah lebih lanjut dalam aplikasi.

    3. Integrasi API yang Mudah:
    
        Dengan library HTTP, integrasi aplikasi dengan berbagai layanan API menjadi lebih mudah. Misalnya, mengambil data cuaca, mengirimkan data pengguna, atau berkomunikasi dengan database melalui API REST.

    4. Pendukung Pengolahan Data Real-time:

        Library ini memungkinkan aplikasi untuk secara dinamis berkomunikasi dengan server, memastikan data yang ditampilkan selalu mutakhir. Hal ini sangat berguna untuk aplikasi yang membutuhkan pembaruan data secara langsung, seperti aplikasi berita atau media sosial.

    5. Manajemen Kesalahan (Error Handling):
        
        Library HTTP mendukung penanganan kesalahan, seperti kegagalan koneksi atau respons tidak valid. Ini memastikan aplikasi dapat memberikan informasi yang tepat kepada pengguna jika terjadi masalah.

    Dengan library HTTP, pengembangan aplikasi menjadi lebih efisien, terutama dalam menangani komunikasi dengan server. Fungsionalitas ini mendukung pengelolaan data dan interaksi yang dinamis, sehingga memberikan pengalaman yang lebih baik bagi saya saat menangani tugas ini.

* Jelaskan fungsi dari `CookieRequest` dan jelaskan mengapa *instance* `CookieRequest` perlu untuk dibagikan ke semua komponen di aplikasi *Flutter*.
    
    `CookieRequest` dalam Flutter berfungsi untuk mengelola sesi autentikasi dan menyimpan informasi cookie yang diterima dari server. Dengan menggunakan `CookieRequest`, aplikasi dapat mengirimkan permintaan HTTP seperti GET dan POST yang disertai dengan cookie, memastikan bahwa sesi pengguna tetap aktif dan pengguna tidak perlu login berulang kali selama menggunakan aplikasi.

    Fitur utama dari `CookieRequest` adalah kemampuannya untuk mengelola sesi pengguna dengan menyimpan data sesi yang diperoleh dari cookie. Fitur ini memastikan bahwa informasi sesi tetap konsisten di seluruh aplikasi. Selain itu, `CookieRequest` secara otomatis menyertakan cookie dalam setiap permintaan HTTP, yang memungkinkan autentikasi berjalan lancar tanpa perlu menambahkannya secara manual setiap kali. Fitur ini juga mendukung permintaan HTTP yang memerlukan autentikasi, sehingga hanya pengguna yang telah login yang dapat mengakses data atau layanan tertentu.

    Dengan membagikan instance `CookieRequest` di seluruh aplikasi, konsistensi sesi dapat terjaga, dan komponen-komponen seperti login dan dashboard dapat mengakses informasi sesi yang sama tanpa harus membuat objek baru. Integrasi dengan state management seperti `Provider` semakin memudahkan pengelolaan sesi pengguna secara efisien dan konsisten di seluruh aplikasi.

* Jelaskan mekanisme pengiriman data mulai dari input hingga dapat ditampilkan pada Flutter.
    1. **Pengumpulan Data dari Pengguna**: Data diperoleh melalui elemen input seperti `TextField` atau `Form` yang memungkinkan pengguna untuk memasukkan informasi yang dibutuhkan oleh aplikasi.

    2. **Pemrosesan Data oleh Server**: Setelah data diterima dari aplikasi, server memprosesnya sesuai dengan fungsi yang telah ditentukan, seperti menyimpan data ke dalam database atau melakukan perhitungan tertentu.

    3. **Pengiriman Data ke Server**: Data yang telah dikumpulkan dari pengguna dikonversi ke format yang sesuai, seperti `JSON`, dan dikirimkan ke server melalui permintaan HTTP, menggunakan pustaka seperti `http` atau `CookieRequest` untuk mengirim data dalam permintaan `POST`.

    4. **Menerima dan Mengolah Respons**: Aplikasi menerima respons dari server dan memprosesnya dengan mengubahnya menjadi objek atau model yang diperlukan untuk memastikan struktur data yang konsisten dan dapat digunakan dalam aplikasi.

    5. **Menampilkan Data pada Antarmuka Pengguna**: Data yang telah diproses kemudian diteruskan ke widget untuk ditampilkan kepada pengguna. Flutter secara otomatis memperbarui tampilan jika ada perubahan data, memungkinkan pengguna untuk melihat hasil input atau pemrosesan secara langsung.

* Jelaskan mekanisme autentikasi dari login, register, hingga logout. Mulai dari input data akun pada Flutter ke Django hingga selesainya proses autentikasi oleh Django dan tampilnya menu pada Flutter.
 
    **Login:**

    Pengguna memulai proses login dengan memasukkan *username* dan *password* melalui *form login* di *Flutter*. Setelah itu, *Flutter* mengirimkan permintaan `POST` ke endpoint Django `/auth/login/`, yang mencakup data login tersebut. Di sisi *backend*, Django memvalidasi kredensial yang diberikan. Jika *username* dan *password* cocok, Django akan membuat sesi pengguna dan mengirimkan *cookie* sesi kembali ke aplikasi *Flutter*. *Cookie* sesi ini disimpan di *Flutter* menggunakan `CookieRequest`, yang memungkinkan aplikasi untuk melakukan permintaan yang terotentikasi di masa depan. Setelah login berhasil, pengguna diarahkan ke halaman utama (`MyHomePage`) dengan pesan sukses, sementara jika login gagal, pesan error akan ditampilkan.

    **Register:**

    Untuk melakukan registrasi, pengguna mengisi form dengan data *username*, *password*, dan konfirmasi *password* di *Flutter*. *Flutter* kemudian mengirimkan permintaan `POST` ke endpoint Django `/auth/register/` dengan data yang telah dimasukkan. *Backend* Django memeriksa apakah *username* sudah terdaftar dan apakah *password* yang dimasukkan memenuhi kriteria. Jika validasi berhasil, Django membuat akun baru untuk pengguna dan mengirimkan respons sukses ke *Flutter*. Setelah registrasi berhasil, *Flutter* menampilkan pesan sukses dan mengarahkan pengguna kembali ke halaman login agar mereka dapat masuk menggunakan akun yang baru dibuat.

    **Logout:**

    Ketika pengguna memilih untuk keluar, *Flutter* mengirimkan permintaan `POST` ke endpoint Django `/auth/logout/`. *Backend* Django kemudian menghapus sesi pengguna yang sedang aktif dan menghapus *cookie* sesi terkait, yang menandakan bahwa pengguna telah keluar. Di sisi aplikasi *Flutter*, cookie sesi yang tersimpan juga dihapus, sehingga pengguna tidak dapat mengakses data terotentikasi tanpa melakukan *login* ulang. Setelah proses *logout* berhasil, *Flutter* menampilkan pesan sukses dan mengarahkan pengguna kembali ke halaman *login*.

* Jelaskan bagaimana cara kamu mengimplementasikan *checklist* di atas secara *step-by-step*! (bukan hanya sekadar mengikuti tutorial).
    -  Memastikan deployment proyek tugas Django kamu telah berjalan dengan baik.

        deployment tugas django saya ke proyek ini sudah terhubung dengan baik dengan diperhatikannya kemunculan data product ketika product sudah dipilih, dan user yang terdaftar di proyek django saya.

    - Mengimplementasikan fitur registrasi akun pada proyek tugas Flutter.
        Pada proyek Flutter ini, fitur registrasi dimulai dengan pembuatan halaman registrasi yang menyediakan formulir untuk mengisi username, password, dan konfirmasi password. Formulir ini dilengkapi dengan validasi untuk memastikan bahwa setiap input tidak kosong dan bahwa password yang dimasukkan sesuai dengan konfirmasi password. Hal ini bertujuan untuk menjaga integritas data yang dimasukkan oleh pengguna sebelum dikirimkan ke server.

        Setelah pengguna mengisi formulir dan menekan tombol `Register`, aplikasi mengirimkan permintaan POST ke endpoint Django /auth/register/ dengan data yang dikirim dalam format JSON. Data yang dikirim meliputi username, password pertama (password1), dan password kedua (password2) menggunakan CookieRequest. Proses pengiriman ini memungkinkan data dikirimkan secara aman dengan mempertahankan konsistensi format data.

        Di backend, Django memvalidasi data yang diterima dari Flutter. Django memeriksa apakah password yang dimasukkan cocok dan memastikan bahwa username belum terdaftar di database. Jika validasi berhasil, Django membuat akun pengguna baru menggunakan metode User.objects.create_user(). Setelah akun berhasil dibuat, Django mengirimkan respons sukses dengan status 200 ke Flutter. Flutter kemudian menampilkan notifikasi sukses melalui SnackBar dan mengarahkan pengguna kembali ke halaman login menggunakan `Navigator.pushReplacement()`.

    - Membuat halaman login pada proyek tugas Flutter.

        Pada halaman login, pengguna diminta untuk memasukkan username dan password. Formulir ini juga dilengkapi dengan tombol "Login" yang akan mengirimkan permintaan POST ke endpoint /auth/login/ di Django. Data login, yaitu username dan password, dikirim dalam format JSON menggunakan CookieRequest, memungkinkan aplikasi untuk berkomunikasi dengan backend secara aman.

        Django menggunakan fungsi authenticate() untuk memverifikasi username dan password yang dikirimkan. Jika kredensial valid, Django membuat sesi pengguna dengan fungsi auth_login() dan mengirimkan cookie sesi kembali ke Flutter untuk digunakan dalam permintaan autentikasi selanjutnya. Setelah login berhasil, Flutter menyimpan cookie sesi dan menampilkan pesan sukses menggunakan SnackBar. Pengguna kemudian diarahkan ke halaman utama (MyHomePage). Jika login gagal, aplikasi menampilkan dialog error menggunakan AlertDialog untuk memberi tahu pengguna bahwa login mereka tidak berhasil.
    
    - Mengintegrasikan sistem autentikasi Django dengan proyek tugas Flutter.

        Sistem autentikasi Django diintegrasikan dengan aplikasi Flutter menggunakan library pbp_django_auth, yang mendukung autentikasi berbasis cookie. Library ini mempermudah Flutter dalam menyimpan dan mengelola cookie sesi yang diterima dari Django, yang digunakan untuk mengidentifikasi sesi pengguna di seluruh aplikasi.

        Untuk mempermudah akses ke cookie sesi, instance CookieRequest dibagikan secara global menggunakan Provider. Hal ini memungkinkan semua komponen aplikasi Flutter untuk mengakses dan menggunakan sesi pengguna yang sama tanpa perlu membuat instance baru. Setiap permintaan HTTP yang dikirimkan dari Flutter secara otomatis menyertakan cookie sesi pengguna, memungkinkan Django untuk memverifikasi autentikasi pengguna tanpa perlu login ulang.

    - Membuat model kustom sesuai dengan proyek aplikasi Django.

        Setelah mengatur autentikasi, Flutter dapat berkomunikasi dengan API Django untuk mengambil data produk. Misalnya, untuk menampilkan daftar produk, Flutter mengirimkan permintaan GET ke endpoint API Django yang mengembalikan data dalam format JSON. Permintaan ini dilakukan menggunakan CookieRequest, yang menyertakan cookie sesi pengguna untuk memastikan autentikasi.

        Setelah data diterima dalam format JSON, Flutter mengonversinya menjadi objek Dart menggunakan metode fromJson(). Jika data produk belum diterima, widget CircularProgressIndicator ditampilkan untuk menunjukkan bahwa data sedang dimuat. Begitu data diterima dan diproses, Flutter menggunakan ListView.builder untuk menampilkan daftar produk. Setiap item produk ditampilkan dalam bentuk widget Container, yang menampilkan informasi produk seperti nama, harga, dan deskripsi.

    - Membuat halaman yang berisi daftar semua item yang terdapat pada endpoint JSON di Django yang telah kamu deploy.
        - Tampilkan name, price, dan description dari masing-masing item pada halaman ini.

        Setiap produk yang ada di halaman daftar produk dapat dipilih oleh pengguna untuk melihat informasi lebih detail. Ketika pengguna menekan salah satu item produk, aplikasi menggunakan Navigator.push() untuk membuka halaman detail produk dan mengirimkan data produk yang dipilih sebagai argumen. Halaman detail ini menampilkan semua atribut produk, seperti nama, harga, deskripsi, dan jumlah stok yang tersedia. Untuk atribut image belum dapat saya implementasikan dengan sempurna.

        Untuk menampilkan informasi dengan rapi, aplikasi menggunakan widget Text dan Padding untuk menampilkan data produk secara terstruktur. Navigasi kembali ke halaman daftar produk otomatis dilakukan dengan menggunakan Navigator.push(), memungkinkan pengguna untuk kembali ke daftar produk setelah melihat detail produk tertentu.

    - Membuat halaman detail untuk setiap item yang terdapat pada halaman daftar Item.
        - Halaman ini dapat diakses dengan menekan salah satu item pada halaman daftar Item.
        - Tampilkan seluruh atribut pada model item kamu pada halaman ini.
        - Tambahkan tombol untuk kembali ke halaman daftar item.
    
        Setiap produk yang ada di halaman daftar produk dapat dipilih oleh pengguna untuk melihat informasi lebih detail. Ketika pengguna menekan salah satu item produk, aplikasi menggunakan Navigator.push() untuk membuka halaman detail produk dan mengirimkan data produk yang dipilih sebagai argumen. Halaman detail ini menampilkan semua atribut produk, seperti nama, harga, deskripsi, dan jumlah stok yang tersedia.

        Untuk menampilkan informasi dengan rapi, aplikasi menggunakan widget Text dan Padding untuk menampilkan data produk secara terstruktur. Navigasi kembali ke halaman daftar produk otomatis dilakukan dengan menggunakan Navigator.push(), memungkinkan pengguna untuk kembali ke daftar produk setelah melihat detail produk tertentu.
        
    - Melakukan filter pada halaman daftar item dengan hanya menampilkan item yang terasosiasi dengan pengguna yang login.

        Agar pengguna hanya dapat melihat produk yang terkait dengan akun mereka, Django perlu memodifikasi endpoint API untuk mengembalikan daftar produk berdasarkan pengguna yang sedang login. Pada backend Django, query difilter berdasarkan request.user, yang memastikan hanya produk yang dibuat oleh pengguna yang sedang login yang dikembalikan.

        Di Flutter, saat mengambil data dari API, aplikasi hanya menerima produk yang sesuai dengan pengguna yang sedang aktif. Hal ini meningkatkan privasi dan keamanan aplikasi, serta memastikan bahwa setiap pengguna hanya melihat data yang relevan dengan mereka. Dengan cara ini, setiap pengguna memiliki pengalaman yang lebih personal dalam mengakses produk mereka.
## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
