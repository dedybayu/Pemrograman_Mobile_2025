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

# Tugas Praktikum 2
# Praktikum 5: Navigasi dan Rute

1. **Pengiriman Data Antar Halaman**  
   - Untuk mengirim data ke halaman berikutnya, gunakan `arguments` pada `Navigator`:  
     ```dart
     Navigator.pushNamed(context, '/item', arguments: item);
     ```  
   - Untuk membaca data yang dikirimkan, gunakan `ModalRoute` pada `ItemPage`:  
     ```dart
     final itemArgs = ModalRoute.of(context)!.settings.arguments as Item;
     ```  
   - Referensi: [Navigate with arguments](https://docs.flutter.dev/cookbook/navigation/navigate-with-arguments)

2. **Pengembangan Tampilan Aplikasi Belanja**  
   - Tambahkan atribut foto produk, stok, dan rating.  
   - Ubah tampilan menjadi **GridView** seperti aplikasi marketplace pada umumnya.  
   - Implementasikan **Hero widget** untuk animasi transisi produk.  
     Referensi: [Hero Animations](https://docs.flutter.dev/cookbook/navigation/hero-animations)  
   - Sesuaikan dan modifikasi tampilan agar lebih menarik.  
   - Pecah widget menjadi kode yang lebih kecil agar lebih terstruktur.  
   - Tambahkan **Nama dan NIM** pada footer aplikasi belanja.

3. **Tugas Akhir & Dokumentasi**  
   - Coba modifikasi navigasi menggunakan plugin **go_router**.  
   - Dokumentasikan hasil pekerjaan berupa **screenshot** setiap tahap + **penjelasan** di file `README.md`.  
   - Push hasil pekerjaan ke repository GitHub.  
   - Kumpulkan **link commit repository GitHub** kepada dosen sesuai ketentuan.

# 