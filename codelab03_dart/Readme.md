
# Praktikum 1: Menerapkan Control Flows ("if/else")

## Langkah 1
Ketik atau salin kode program berikut ke dalam fungsi main().

![Img_1_1](/codelab03_dart/img/Screenshot_1_1.png)

## Langkah 2
Silakan coba eksekusi (Run) kode pada langkah 1 tersebut. Apa yang terjadi? Jelaskan!

**Penjelasan:**
Terdapat beberapa kesalahan sintax pada kode tersebut sehingga mengakibatkan error. Kesalahan
``` else If ``` yang benar adalah ```else if```, dan ```Else``` yang benar adalah ```else```. Berikut kode yang sudah direvisi:

![Img_1_1_rev](/codelab03_dart/img/Screenshot_1_1_rev.png)

**Penjelasan:** Dalam kode tersebut if pertama akan memeriksa apakah variabel ```test``` sama dengan string "test1" dan ```else if``` akan memeriksa apakah variabel ```test``` sama dengan string "test2". Sedangkan if yang bawah juga  akan memeriksa apakah variabel ```test``` sama dengan string "test2".

Dikarenakan variabel ```test``` bernilai "test2" maka yang akan dijalankan yaitu kondisi ```else if``` dan ```if``` yang bawah, yang akan mengeprint "Test2" dan "Test2 again"

## Langkah 3

Tambahkan kode program berikut, lalu coba eksekusi (Run) kode Anda.
```
String test = "true";
if (test) {
   print("Kebenaran");
}
```
Apa yang terjadi ? Jika terjadi error, silakan perbaiki namun tetap menggunakan if/else.

**Jawaban:** 

![Img_1_1_rev](/codelab03_dart/img/Screenshot_1_3.png)

Kode akan error dikarenakan kondisi ```if (test2)``` hanya bisa berjalan normal jika variabel test2 bertipe data bool sedangkan variabel tersebut bertipe String. Berikut kode yang sudah direvisi:

![Img_1_1_rev](/codelab03_dart/img/Screenshot_1_3_rev.png)



# Praktikum 2: Menerapkan Perulangan "while" dan "do-while"

## Langkah 1
Ketik atau salin kode program berikut ke dalam fungsi main().

```
while (counter < 33) {
  print(counter);
  counter++;
}
```

## Langkah 2
Silakan coba eksekusi (Run) kode pada langkah 1 tersebut. Apa yang terjadi? Jelaskan! Lalu perbaiki jika terjadi error.

**Jawaban:**

![Img_1_1_rev](/codelab03_dart/img/Screenshot_2_1.png)

Terjadi error dikarenakan variabel ```counter``` belum di inialisasi. Berikut kode yang sudah direvisi:

![Img_1_1_rev](/codelab03_dart/img/Screenshot_2_1_rev.png)

Kode tersebut akan melooping dengan while dimulai dari ```counter = 28``` sampai ```counter < 33``` atau berhenti di 32.

## Langkah 3
Tambahkan kode program berikut, lalu coba eksekusi (Run) kode Anda.
```
do {
  print(counter);
  counter++;
} while (counter < 77);
```
Apa yang terjadi ? Jika terjadi error, silakan perbaiki namun tetap menggunakan do-while.

**Jawaban:** 

![Img_1_1_rev](/codelab03_dart/img/Screenshot_2_3.png)

Program akan melakukan perulangan lagi dikondisi ```counter = 32```, dan akan lanjut sampai ```counter < 77 ```atau berhenti sampai 76. Bedanya dengan ```while```, ```do while``` pengecekan kondisi dilakukan di akhir.


# Praktikum 3: Menerapkan Perulangan "for" dan "break-continue"

## Langkah 1
Ketik atau salin kode program berikut ke dalam fungsi main().
```
for (Index = 10; index < 27; index) {
  print(Index);
}
```

## Langkah 2:
Silakan coba eksekusi (Run) kode pada langkah 1 tersebut. Apa yang terjadi? Jelaskan! Lalu perbaiki jika terjadi error.

**Jawaban:** 

![Img_1_1_rev](/codelab03_dart/img/Screenshot_3_1.png)
Terdapat beberapa kesalahan seperti variabel belum di inisialisasi untuk tipe datanya serta untuk variabel index tidak konsisten pengetikannya (ada yang ```index``` dan ```Index```). Berikut kode yang sudah direvisi:

![Img_1_1_rev](/codelab03_dart/img/Screenshot_3_1_rev.png)

## Langkah 3:
Tambahkan kode program berikut di dalam for-loop, lalu coba eksekusi (Run) kode Anda.
```
If (Index == 21) break;
Else If (index > 1 || index < 7) continue;
print(index);
```
Apa yang terjadi ? Jika terjadi error, silakan perbaiki namun tetap menggunakan for dan break-continue.

**Jawaban:** Tidak ada output yang dihasilkan

![Img_1_1_rev](/codelab03_dart/img/Screenshot_3_3_rev.png)

Hal ini dikarenakan ketika Cek ```else if (index > 1 || index < 7) continue;```

Karena operator yang digunakan adalah || (OR), maka kondisi ini akan selalu true untuk semua angka dari 10 sampai 26.

Misal ```index = 10: 10 > 1 (true)```, sehingga kondisi OR terpenuhi → continue. Bahkan kalau index < 7, juga akan tetap true.

Jadi setiap kali perulangan berjalan, selalu continue atau lompat ke iterasi berikutnya tanpa pernah sampai ke ```print(index);```.

Akibatnya, baris ```print(index);``` tidak pernah dijalankan, sehingga output kosong.


# Tugas Praktikum
Buatlah sebuah program yang dapat menampilkan bilangan prima dari angka 0 sampai 201 menggunakan Dart. Ketika bilangan prima ditemukan, maka tampilkan nama lengkap dan NIM Anda.

![Img_1_1_rev](/codelab03_dart/img/Screenshot_4_rev.png)
