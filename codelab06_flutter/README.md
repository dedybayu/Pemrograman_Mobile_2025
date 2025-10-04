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
![Img_1_1](img/belanja/image_1.png)

## Langkah 2: Mendefinisikan Route
home_page.dart

![Img_1_1](img/belanja/image_2_1.png)


item_page.dart

![Img_1_1](img/belanja/image_2_1.png)


## Langkah 3: Lengkapi Kode di main.dart
![Img_1_1](img/belanja/image_3.png)


## Langkah 4: Membuat data model
![Img_1_1](img/belanja/image_4.png)

## Langkah 5: Lengkapi kode di class HomePage
![Img_1_1](img/belanja/image_5.png)

## Langkah 6: Membuat ListView dan itemBuilder
![Img_1_1](img/belanja/image_6.png)

## Langkah 7: Menambahkan aksi pada ListView
![Img_1_1](img/belanja/image_7.png)


Tentu, ini adalah format markdown dari teks pada gambar tersebut:

-----

# Tugas Praktikum 2

1.  Untuk melakukan pengiriman data ke halaman berikutnya, cukup menambahkan informasi `arguments` pada penggunaan `Navigator`. Perbarui kode pada bagian `Navigator` menjadi seperti berikut.

    ```dart
    Navigator.pushNamed(context, '/item', arguments: item);
    ```
    ![Img_1_1](img/belanja/image_8.png)
    
2.  Pembacaan nilai yang dikirimkan pada halaman sebelumnya dapat dilakukan menggunakan `ModalRoute`. Tambahkan kode berikut pada blok fungsi `build` dalam halaman `ItemPage`. Setelah nilai didapatkan, anda dapat menggunakannya seperti penggunaan variabel pada umumnya. ([https://docs.flutter.dev/cookbook/navigation/navigate-with-arguments](https://docs.flutter.dev/cookbook/navigation/navigate-with-arguments))

    ```dart
    final itemArgs = ModalRoute.of(context)!.settings.arguments as Item;
    ```
    ![Img_1_1](img/belanja/image_9_1.png)

    hasil:

    ![Img_1_1](img/belanja/image_9_2.png)


3.  Pada hasil akhir dari aplikasi **belanja** yang telah anda selesaikan, tambahkan atribut foto produk, stok, dan rating. Ubahlah tampilan menjadi `GridView` seperti di aplikasi marketplace pada umumnya.



4.  Silakan implementasikan `Hero widget` pada aplikasi **belanja** Anda dengan mempelajari dari sumber ini: [https://docs.flutter.dev/cookbook/navigation/hero-animations](https://docs.flutter.dev/cookbook/navigation/hero-animations)

5.  Sesuaikan dan modifikasi tampilan sehingga menjadi aplikasi yang menarik. Selain itu, pecah widget menjadi kode yang lebih kecil. Tambahkan **Nama** dan **NIM** di footer aplikasi **belanja** Anda.

6.  Selesaikan Praktikum 5: Navigasi dan Rute tersebut. Cobalah modifikasi menggunakan plugin `go_router`, lalu dokumentasikan dan push ke repository Anda berupa screenshot setiap hasil pekerjaan beserta penjelasannya di file `README.md`. Kumpulkan link commit repository GitHub Anda kepada dosen yang telah disepakati\!