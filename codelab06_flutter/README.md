| No. Presensi | Nama               | NIM        | Kelas   |
| ------------ | ------------------ | ---------- | ------- |
| 08           | Dedy Bayu Setiawan | 2341720041 | TI - 3H |

<br>

# Praktikum 1: Membangun Layout di Flutter

## Langkah 1: Buat Project Baru

![Img_1_1](img/praktikum1-4/Screenshot_1_1.png)

## Langkah 4: Implementasi title row

![Img_1_1](img/praktikum1-4/Screenshot_1_2.png)



# Praktikum 2: Implementasi button row
## Buat widget buttonSection
![Img_1_1](img/praktikum1-4/Screenshot_2.png)



# Praktikum 3: Implementasi text section
##  Buat widget buttonSection
![Img_1_1](img/praktikum1-4/Screenshot_3.png)


# Praktikum 4: Implementasi image section
##  Buat widget imageSection

![Img_1_1](img/praktikum1-4/Screenshot_4.png)

# Kreasi: Membuat Comment 
## Buat widget commentSection
![Img_1_1](img/praktikum1-4/Screenshot_4_2.png)

## Pemanggilan di class MyApp
![Img_1_1](img/praktikum1-4/Screenshot_4_3.png)

## Hasil Tampilan
![Img_1_1](img/praktikum1-4/Screenshot_4_hasil.png)



# Tugas Praktikum 1
## 1. Selesaikan Praktikum 1 sampai 4, lalu dokumentasikan dan push ke repository Anda berupa screenshot setiap hasil pekerjaan beserta penjelasannya di file README.md!

## 2. Silakan implementasikan di project baru "basic_layout_flutter" dengan mengakses sumber ini: https://docs.flutter.dev/codelabs/3. layout-basics

https://github.com/dedybayu/Pemrograman_Mobile_2025/tree/main/codelab06_flutter/basic_layout_flutter

### 1. Create a visible widget
![Img_1_1](img/basic_layout/Screenshot_1.png)

### 2. Aligning widgets
Horisontal
![Img_1_1](img/basic_layout/Screenshot_2_1.png)

Vertikal
![Img_1_1](img/basic_layout/Screenshot_2_2.png)

### 3. Sizing widgets
![Img_1_1](img/basic_layout/Screenshot_3_1.png)

![Img_1_1](img/basic_layout/Screenshot_3_2.png)

### 4. Packing widgets
![Img_1_1](img/basic_layout/Screenshot_4.png)

### 5. Nesting rows and columns
![Img_1_1](img/basic_layout/Screenshot_5_1.png)
![Img_1_1](img/basic_layout/Screenshot_5_2.png)
![Img_1_1](img/basic_layout/Screenshot_5_3.png)

![Img_1_1](img/basic_layout/Screenshot_5_4.png)

### 6. Common layout widgets

#### Container
![Img_1_1](img/basic_layout/Screenshot_6_1.png)

#### GridView
![Img_1_1](img/basic_layout/Screenshot_6_2_1.png)

![Img_1_1](img/basic_layout/Screenshot_6_2_2_1.png)
![Img_1_1](img/basic_layout/Screenshot_6_2_2_2.png)
![Img_1_1](img/basic_layout/Screenshot_6_2_2_3.png)

#### ListView
![Img_1_1](img/basic_layout/Screenshot_6_3.png)

#### Stack
![Img_1_1](img/basic_layout/Screenshot_6_4.png)


### 7. Card
![Img_1_1](img/basic_layout/Screenshot_7_1.png)

![Img_1_1](img/basic_layout/Screenshot_7_2.png)

![Img_1_1](img/basic_layout/Screenshot_7_3.png)


## 3. Kumpulkan link commit repository GitHub Anda kepada dosen yang telah disepakati!



# Praktikum 5: Membangun Navigasi di Flutter

## Langkah 1: Siapkan project baru
![Img_1_1](img/belanja/awal/image_1.png)

## Langkah 2: Mendefinisikan Route
home_page.dart

![Img_1_1](img/belanja/awal/image_2_1.png)


item_page.dart

![Img_1_1](img/belanja/awal/image_2_1.png)


## Langkah 3: Lengkapi Kode di main.dart
![Img_1_1](img/belanja/awal/image_3.png)


## Langkah 4: Membuat data model
![Img_1_1](img/belanja/awal/image_4.png)

## Langkah 5: Lengkapi kode di class HomePage
![Img_1_1](img/belanja/awal/image_5.png)

## Langkah 6: Membuat ListView dan itemBuilder
![Img_1_1](img/belanja/awal/image_6.png)

## Langkah 7: Menambahkan aksi pada ListView
![Img_1_1](img/belanja/awal/image_7.png)


Tentu, ini adalah format markdown dari teks pada gambar tersebut:

-----

# Tugas Praktikum 2

1.  Untuk melakukan pengiriman data ke halaman berikutnya, cukup menambahkan informasi `arguments` pada penggunaan `Navigator`. Perbarui kode pada bagian `Navigator` menjadi seperti berikut.

    ```dart
    Navigator.pushNamed(context, '/item', arguments: item);
    ```
    ![Img_1_1](img/belanja/awal/image_8.png)
    
2.  Pembacaan nilai yang dikirimkan pada halaman sebelumnya dapat dilakukan menggunakan `ModalRoute`. Tambahkan kode berikut pada blok fungsi `build` dalam halaman `ItemPage`. Setelah nilai didapatkan, anda dapat menggunakannya seperti penggunaan variabel pada umumnya. ([https://docs.flutter.dev/cookbook/navigation/navigate-with-arguments](https://docs.flutter.dev/cookbook/navigation/navigate-with-arguments))

    ```dart
    final itemArgs = ModalRoute.of(context)!.settings.arguments as Item;
    ```
    ![Img_1_1](img/belanja/awal/image_9_1.png)

    hasil:

    ![Img_1_1](img/belanja/awal/image_9_2.png)

    price_formatter untuk format harga (tambahan)
    ![Img_1_1](img/belanja/awal/image_5_2.png)


3.  Pada hasil akhir dari aplikasi **belanja** yang telah anda selesaikan, tambahkan atribut foto produk, stok, dan rating. Ubahlah tampilan menjadi `GridView` seperti di aplikasi marketplace pada umumnya.

4.  Silakan implementasikan `Hero widget` pada aplikasi **belanja** Anda dengan mempelajari dari sumber ini: [https://docs.flutter.dev/cookbook/navigation/hero-animations](https://docs.flutter.dev/cookbook/navigation/hero-animations)

5.  Sesuaikan dan modifikasi tampilan sehingga menjadi aplikasi yang menarik. Selain itu, pecah widget menjadi kode yang lebih kecil. Tambahkan **Nama** dan **NIM** di footer aplikasi **belanja** Anda.

<br>
<hr>
<br>

# Jawaban soal 3 - 5
## Struktur directory
```
lib/
├── main.dart
├── models/
│   └── product.dart
├── pages/
│   ├── home_page.dart
│   ├── item_page.dart
│   └── preview_image.dart
├── utils/
│   └── price_formatter.dart
├── widgets/
│   ├── list_product/
│   │   ├── list_product.dart
│   │   ├── list_product_image.dart
│   │   └── list_product_info.dart
│   ├── product_page/
│   │   ├── button_section.dart
│   │   ├── button_with_text.dart
│   │   ├── image_section.dart
│   │   ├── review_section.dart
│   │   ├── text_section.dart
│   │   └── title_section.dart
│   └── footer_section.dart
```
Saya melakukan perubahan nama **file/class/variabel** dari **Item** menjadi **Product** agar konsisten dan relevan dengan projek

## Modifikasi dan Penambahan
 
### main.dart
  ![Img_1_1](img/belanja/modifikasi/image_1.png)
  
  Terdapat penambahan route baru ```/preview-image``` untuk menampilkan gambar secara full pada product page.


### models/product.dart
  ![Img_1_1](img/belanja/modifikasi/image_2.png)

  Terdapat penambahan atribut ```rating```, ```stock```, ```code```, ```description```, dan ```image```. Image digunakan untuk menyimpan path gambar, deskripsi menyimpan deskripsi produk, dan code digunakan untuk menyimpan kode produk (saat ini digunakan untuk tag Hero agar unik).

### utils/price_formatter.dart
  ![Img_1_1](img/belanja/modifikasi/image_3.png)

  class ini digunakan untuk mengkonveri data int price menjadi string berformat rupiah Indonesia 

### pages/home_page.dart
  ![Img_1_1](img/belanja/modifikasi/image_4.png)

  Kode ini digunakan untuk menampung isi dari home page, kode ini memanggil list produk

### pages/product_page.dart
  ![Img_1_1](img/belanja/modifikasi/image_5.png)

  kode ini digunakan untuk menampilkan detail produk saat produk di list diklik. dalam kode ini akan terbagi menjadi beberapa section yaitu image, title, text, review, button, dan button_with_text. 

### pages/preview_image.dart
  ![Img_1_1](img/belanja/modifikasi/image_6.png)

  kode ini berfungsi untuk menampilkan gambar penuh ketika gambar di product page di klik

### widgets/list_product/list_product.dart
  ![Img_1_1](img/belanja/modifikasi/image_7.png)

  kode ini digunakan untuk menampilkan produk berbentuk card untuk dipanggil di home page. terbagi menjadi 2 section yaitu image dan info

### widgets/list_product/list_product_image.dart
  ![Img_1_1](img/belanja/modifikasi/image_8.png)

  merupakan section dari list_product yang berfungsi untuk menampung/menampilkan gambar produk

### widgets/list_product/list_product_info.dart
  ![Img_1_1](img/belanja/modifikasi/image_9.png)

  merupakan section dari list_product yang berfungsi untuk menampung/menampilkan info (nama, harga, rating) produk


### widgets/product_page/button_section.dart
  ![Img_1_1](img/belanja/modifikasi/image_10.png)

  merupakan section dari produk page yang berfungsi untuk menampilkan button beli dan masukan ke keranjang, kode ini akan memanggil button_with_text

### widgets/product_page/button_with_text.dart
  ![Img_1_1](img/belanja/modifikasi/image_11.png)

  kode ini berisi style untuk button masukan ke keranjang dan beli sekarang

### widgets/product_page/image_section.dart
  ![Img_1_1](img/belanja/modifikasi/image_12.png)

  kode ini merupakan section dari product page yang berfungsi menampilkan gambar

### widgets/product_page/review_section.dart
  ![Img_1_1](img/belanja/modifikasi/image_13.png)

  kode ini merupakan section dari product page yang berfungsi menampilkan review pembeli

### widgets/product_page/text_section.dart
  ![Img_1_1](img/belanja/modifikasi/image_14.png)

  kode ini merupakan section dari product page yang berfungsi menampilkan deskripsi produk

### widgets/product_page/title_section.dart
  ![Img_1_1](img/belanja/modifikasi/image_15.png)

  kode ini merupakan section dari product page yang berfungsi menampilkan nama produk, harga, stok, dan rating
  

### widgets/footer_section.dart
  ![Img_1_1](img/belanja/modifikasi/image_16.png)

  kode ini berfungsi untuk menampilkan nama dan nim saya di footer pada home page

### Hasil:
![Img_1_1](img/belanja/hasil/DedyBayu_Store.gif)



<br>
<hr>
<br>

6.  Selesaikan Praktikum 5: Navigasi dan Rute tersebut. Cobalah modifikasi menggunakan plugin `go_router`, lalu dokumentasikan dan push ke repository Anda berupa screenshot setiap hasil pekerjaan beserta penjelasannya di file `README.md`. Kumpulkan link commit repository GitHub Anda kepada dosen yang telah disepakati\!
    
  - Memodifikasi kode ```main.dart```

      ![Img_1_1](img/belanja/go_router/image_1.png)

      Mengganti route dari menggunakan MaterialApp menjadi GoRouter 


  - Memodifikasi kode ```widgets/list_product/list_product.dart```

      ![Img_1_1](img/belanja/go_router/image_2.png)

      Mengganti ```Navigator.pushNamed``` menjadi ```context.push``` untuk route ```/product```
      

  - Memodifikasi kode ```pages/product_page.dart```

      ![Img_1_1](img/belanja/go_router/image_3.png)

      Mengganti ```ModalRoute``` menjadi ```GoRouterState``` di ProductPage

      
  - Memodifikasi kode ```widgets/product_page/image_section.dart```

      ![Img_1_1](img/belanja/go_router/image_4.png)

      Mengganti ```Navigator.pushNamed``` menjadi ```context.push``` untuk route ```/preview-image```

      
  - Memodifikasi kode ```pages/preview_image.dart```

      ![Img_1_1](img/belanja/go_router/image_5.png)

      Mengganti ```ModalRoute``` menjadi ```GoRouterState``` di PreviewImage

<br>
<hr>

# Hasil Akhir:
![Img_1_1](img/belanja/hasil/DedyBayu_Store.gif)

<br>

![Img_1_1](img/belanja/hasil/home_page.png)

<br>

![Img_1_1](img/belanja/hasil/product_page.png)

<br>

![Img_1_1](img/belanja/hasil/preview_image.png)





