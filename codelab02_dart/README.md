# Soal 1

Modifikasilah kode pada baris 3 di VS Code atau Editor Code favorit Anda berikut ini agar mendapatkan keluaran (output) sesuai yang diminta!

![enter image description here](/codelab02_dart/img/Screenshot_1.png)


# Soal 2

Mengapa sangat penting untuk memahami bahasa pemrograman Dart sebelum kita menggunakan framework Flutter ? Jelaskan!

**Jawaban:** Karena Flutter sepenuhnya menggunakan bahasa pemrograman Dart, Sehingga setiap pembuatan widget, pengelolaan state, hingga pemanggilan API bergantung pada sintaks dan konsep dasar Dart. Dengan belajar Dart kita dapat lebih memahami struktur kode, menulis logika yang efisien, serta menangani fitur penting seperti asynchronous programming (async/await, Future, Stream) yang banyak digunakan di Flutter.

# Soal 3

Rangkumlah materi dari codelab ini menjadi poin-poin penting yang dapat Anda gunakan untuk membantu proses pengembangan aplikasi mobile menggunakan framework Flutter.

**Jawaban:** 
 
**Ringkasan:**

Bahasa pemrograman Dart hadir dengan tujuan menggabungkan kelebihan bahasa tingkat tinggi dengan fitur modern seperti productive tooling, garbage collection, type annotations opsional, serta type safety untuk mencegah bug sejak awal. Dart bersifat portabel, dapat dikompilasi ke JavaScript untuk web maupun secara native ke ARM dan x86 untuk aplikasi mobile. Sejak diluncurkan pada 2011, Dart berkembang dari fokus pengembangan web menjadi bahasa utama untuk Flutter, dengan dukungan JIT (Just-In-Time) untuk debugging dan hot reload, serta AOT (Ahead-Of-Time) untuk performa tinggi. Hal ini membuat Dart menjadi bahasa yang fleksibel, efisien, dan relevan untuk pengembangan aplikasi lintas platform.  

Struktur Dart mirip dengan C dan JavaScript sehingga mudah dipelajari, terutama bagi yang sudah memiliki dasar pemrograman. Dart mendukung paradigma Object-Oriented Programming (OOP) dengan fitur encapsulation, inheritance, abstraction, composition, dan polymorphism. Selain itu, Dart menyediakan berbagai operator umum seperti aritmatika, increment/decrement, equality, relational, dan logical yang tetap konsisten dengan prinsip type safety. Dengan kemampuan tersebut, Dart menjadi fondasi penting dalam Flutter, memungkinkan pengembang menulis kode yang produktif, aman, dan mudah dipelihara.  

---

**Poin-Poin Penting:**

- Dart menggabungkan kelebihan bahasa tingkat tinggi dengan fitur modern.  
- Fitur utama: productive tooling, garbage collection, type annotations opsional, dan type safety.  
- Portabilitas tinggi: bisa dikompilasi ke JavaScript (web) atau native ARM/x86 (mobile).  
- Evolusi:
  - Diluncurkan tahun 2011 untuk web.  
  - Berfokus pada mobile dengan Flutter sejak Dart 2.0 (2018).  
- Mendukung dua mode kompilasi:  
  - JIT (Just-In-Time): debugging & hot reload.  
  - AOT (Ahead-Of-Time): performa optimal untuk rilis aplikasi.  
- Sintaks mirip C dan JavaScript → mudah dipelajari.  
- Berorientasi objek (OOP) dengan fitur:
  - Encapsulation  
  - Inheritance  
  - Abstraction  
  - Composition  
  - Polymorphism  
- Mendukung operator lengkap:
  - Aritmatika
  - Increment/Decrement
  - Equality
  - Relational
  - Logical
- Menjadi fondasi utama Flutter untuk produktivitas tinggi, keamanan kode, dan pemeliharaan aplikasi.  

<br>

# Soal 4

Buatlah penjelasan dan contoh eksekusi kode tentang perbedaan Null Safety dan Late variabel !

## Null Safety <br>
 ![enter image description here](/codelab02_dart/img/Screenshot_2.png)

**Null Safety** berfungsi untuk memastikan bahwa sebuah variabel tidak bisa bernilai null kecuali secara eksplisit diizinkan.
- Secara default, variabel tidak boleh null.
- Jika ingin bisa null, harus diberi tanda ? pada tipe datanya.

## Late variabel <br>
![enter image description here](/codelab02_dart/img/Screenshot_3.png)

**Late Variable** digunakan ketika kita menunda inisialisasi variabel, tetapi kita menjamin variabel itu akan diisi sebelum digunakan. Biasanya dipakai untuk variabel yang nilainya baru diketahui belakangan. Jika digunakan sebelum diinisialisasi, akan error runtime.

Contoh Ketika error:

![enter image description here](/codelab02_dart/img/Screenshot_4.png)
