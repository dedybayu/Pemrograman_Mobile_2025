| Nama               | NIM        | Kelas   |
| -------------------- | ------------ | --------- |
| Dedy Bayu Setiawan | 2341720041 | TI - 3H |



# Praktikum 1: Eksperimen Tipe Data List

## Langkah 1
Ketik atau salin kode program berikut ke dalam void main().
```
var list = [1, 2, 3];
assert(list.length == 3);
assert(list[1] == 2);
print(list.length);
print(list[1]);

list[1] = 1;
assert(list[1] == 1);
print(list[1]);
```

## Langkah 2
Silakan coba eksekusi (Run) kode pada langkah 1 tersebut. Apa yang terjadi? Jelaskan!

![Img_1_1](/codelab04_dart/img/Screenshot_1_1.png)

**Penjelasan:** Program tersebut membuat sebuah list [1, 2, 3], lalu menggunakan assert untuk memastikan panjang list adalah 3 dan nilai pada indeks ke-1 bernilai 2, yang keduanya benar sehingga tidak menimbulkan error. Setelah itu, program mencetak panjang list (3) dan isi indeks ke-1 (2). Kemudian elemen pada indeks ke-1 diubah dari 2 menjadi 1, sehingga list menjadi [1, 1, 3]. Perubahan ini juga diverifikasi dengan assert, lalu hasil akhirnya ditampilkan (1). Dengan demikian, output yang muncul di konsol adalah 3, 2, dan 1. 
```
void main() {
  var list = [1, 2, 3];        // Membuat list berisi [1, 2, 3]

  assert(list.length == 3);    // Mengecek panjang list = 3 → benar
  assert(list[1] == 2);        // Mengecek elemen index ke-1 = 2 → benar
  print(list.length);          // Output: 3
  print(list[1]);              // Output: 2

  list[1] = 1;                 // Mengubah elemen index ke-1 dari 2 → 1
  assert(list[1] == 1);        // Mengecek lagi, sekarang benar karena sudah 1
  print(list[1]);              // Output: 1
}
```

## Langkah 3
Ubah kode pada langkah 1 menjadi variabel final yang mempunyai index = 5 dengan default value = null. Isilah nama dan NIM Anda pada elemen index ke-1 dan ke-2. Lalu print dan capture hasilnya.

![Img_1_1](/codelab04_dart/img/Screenshot_1_3.png)


# Praktikum 2: Eksperimen Tipe Data Set

## Langkah 1
Ketik atau salin kode program berikut ke dalam fungsi main().
```
var halogens = {'fluorine', 'chlorine', 'bromine', 'iodine', 'astatine'};
print(halogens);
```

## Langkah 2
Silakan coba eksekusi (Run) kode pada langkah 1 tersebut. Apa yang terjadi? Jelaskan! 

![Img_1_1](/codelab04_dart/img/Screenshot_2_2.png)

Variabel halogens adalah sebuah Set di Dart, yaitu koleksi yang berisi elemen unik (tidak bisa duplikat) dan tidak menjamin urutan. Yang terjadi adalah program mencetak seluruh anggota himpunan halogens. Tidak ada error, hanya saja urutan tampilan elemen tidak dijamin tetap.

## Langkah 3
Tambahkan kode program berikut, lalu coba eksekusi (Run) kode Anda.

```
var names1 = <String>{};
Set<String> names2 = {}; // This works, too.
var names3 = {}; // Creates a map, not a set.

print(names1);
print(names2);
print(names3);
```

Apa yang terjadi ? Jika terjadi error, silakan perbaiki namun tetap menggunakan ketiga variabel tersebut. Tambahkan elemen nama dan NIM Anda pada kedua variabel Set tersebut dengan dua fungsi berbeda yaitu .add() dan .addAll(). Untuk variabel Map dihapus, nanti kita coba di praktikum selanjutnya.

Dokumentasikan code dan hasil di console, lalu buat laporannya.

![Img_1_1](/codelab04_dart/img/Screenshot_2_3.png)

Saat dijalankan, names1 dan names2 akan dicetak sebagai set kosong, sedangkan names3 adalah map kosong ({}).

![Img_1_1](/codelab04_dart/img/Screenshot_2_3_rev.png)



# Praktikum 3: Eksperimen Tipe Data Maps

## Langkah 1
Ketik atau salin kode program berikut ke dalam fungsi main().


## Langkah 2
Silakan coba eksekusi (Run) kode pada langkah 1 tersebut. Apa yang terjadi? Jelaskan! Lalu perbaiki jika terjadi error.

![Img_1_1](/codelab04_dart/img/Screenshot_3_1.png)

```gift``` Didefinisikan menggunakan {} dengan pasangan key–value, jadi otomatis menjadi sebuah Map. Key bertipe String ('first', 'second', 'fifth'). Value bisa campuran ('partridge', 'turtledoves', dan 1). ```nobleGases``` Sama-sama Map, tetapi key bertipe int (2, 10, 18). Value bertipe campuran: String untuk 2 & 10, dan int (2) untuk key 18.

## Langkah 3
Tambahkan kode program berikut, lalu coba eksekusi (Run) kode Anda.

```
var mhs1 = Map<String, String>();
gifts['first'] = 'partridge';
gifts['second'] = 'turtledoves';
gifts['fifth'] = 'golden rings';

var mhs2 = Map<int, String>();
nobleGases[2] = 'helium';
nobleGases[10] = 'neon';
nobleGases[18] = 'argon';
```
Apa yang terjadi ? Jika terjadi error, silakan perbaiki.

![Img_1_1](/codelab04_dart/img/Screenshot_3_3.png)

Tambahkan elemen nama dan NIM Anda pada tiap variabel di atas (gifts, nobleGases, mhs1, dan mhs2). Dokumentasikan hasilnya dan buat laporannya!

![Img_1_1](/codelab04_dart/img/Screenshot_3_3_rev.png)



# Praktikum 4: Eksperimen Tipe Data List: Spread dan Control-flow Operators

## Langkah 1
Ketik atau salin kode program berikut ke dalam fungsi main().
```
var list = [1, 2, 3];
var list2 = [0, ...list];
print(list1);
print(list2);
print(list2.length);
```

## Langkah 2
Silakan coba eksekusi (Run) kode pada langkah 1 tersebut. Apa yang terjadi? Jelaskan! Lalu perbaiki jika terjadi error.

## Langkah 3
Tambahkan kode program berikut, lalu coba eksekusi (Run) kode Anda.

```
list1 = [1, 2, null];
print(list1);
var list3 = [0, ...?list1];
print(list3.length);
```
Apa yang terjadi ? Jika terjadi error, silakan perbaiki.

Tambahkan variabel list berisi NIM Anda menggunakan Spread Operators. Dokumentasikan hasilnya dan buat laporannya!

## Langkah 4
Tambahkan kode program berikut, lalu coba eksekusi (Run) kode Anda.
```
var nav = ['Home', 'Furniture', 'Plants', if (promoActive) 'Outlet'];
print(nav);
```
Apa yang terjadi ? Jika terjadi error, silakan perbaiki. Tunjukkan hasilnya jika variabel promoActive ketika true dan false.

## Langkah 5
Tambahkan kode program berikut, lalu coba eksekusi (Run) kode Anda.
```
var nav2 = ['Home', 'Furniture', 'Plants', if (login case 'Manager') 'Inventory'];
print(nav2);
```
Apa yang terjadi ? Jika terjadi error, silakan perbaiki. Tunjukkan hasilnya jika variabel login mempunyai kondisi lain.

## Langkah 6
Tambahkan kode program berikut, lalu coba eksekusi (Run) kode Anda.
```
var listOfInts = [1, 2, 3];
var listOfStrings = ['#0', for (var i in listOfInts) '#$i'];
assert(listOfStrings[1] == '#1');
print(listOfStrings);
```
Apa yang terjadi ? Jika terjadi error, silakan perbaiki. Jelaskan manfaat Collection For dan dokumentasikan hasilnya.



# Praktikum 5: Eksperimen Tipe Data Records

## Langkah 1
Ketik atau salin kode program berikut ke dalam fungsi main().
```
var record = ('first', a: 2, b: true, 'last');
print(record)
```

## Langkah 2
Silakan coba eksekusi (Run) kode pada langkah 1 tersebut. Apa yang terjadi? Jelaskan! Lalu perbaiki jika terjadi error.


## Langkah 3
Tambahkan kode program berikut di luar scope void main(), lalu coba eksekusi (Run) kode Anda.
```
(int, int) tukar((int, int) record) {
  var (a, b) = record;
  return (b, a);
}
```
Apa yang terjadi ? Jika terjadi error, silakan perbaiki. Gunakan fungsi tukar() di dalam main() sehingga tampak jelas proses pertukaran value field di dalam Records.


## Langkah 4
Tambahkan kode program berikut di dalam scope void main(), lalu coba eksekusi (Run) kode Anda.
```
// Record type annotation in a variable declaration:
(String, int) mahasiswa;
print(mahasiswa);
```
Apa yang terjadi ? Jika terjadi error, silakan perbaiki. Inisialisasi field nama dan NIM Anda pada variabel record ```mahasiswa``` di atas. Dokumentasikan hasilnya dan buat laporannya!


## Langkah 5
Tambahkan kode program berikut di dalam scope void main(), lalu coba eksekusi (Run) kode Anda.
```
var mahasiswa2 = ('first', a: 2, b: true, 'last');

print(mahasiswa2.$1); // Prints 'first'
print(mahasiswa2.a); // Prints 2
print(mahasiswa2.b); // Prints true
print(mahasiswa2.$2); // Prints 'last'
```
Apa yang terjadi ? Jika terjadi error, silakan perbaiki. Gantilah salah satu isi record dengan nama dan NIM Anda, lalu dokumentasikan hasilnya dan buat laporannya!




# Tugas Praktikum
1. Silakan selesaikan Praktikum 1 sampai 5, lalu dokumentasikan berupa screenshot hasil pekerjaan Anda beserta penjelasannya!

2. Jelaskan yang dimaksud Functions dalam bahasa Dart!

3. Jelaskan jenis-jenis parameter di Functions beserta contoh sintaksnya!

4. Jelaskan maksud Functions sebagai first-class objects beserta contoh sintaknya!

5. Apa itu Anonymous Functions? Jelaskan dan berikan contohnya!

6. Jelaskan perbedaan Lexical scope dan Lexical closures! Berikan contohnya!

7.  Jelaskan dengan contoh cara membuat return multiple value di Functions!