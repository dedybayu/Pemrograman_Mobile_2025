void main(List<String> args) {
  var record = ('first', a: 2, b: true, 'last');
  print(record);

  var hasil = tukar((10, 20));
  print(hasil);

  // Record type annotation in a variable declaration:
  (String, int) mahasiswa = ('Dedy Bayu Setiawan', 2341720041);
  print(mahasiswa);
  print(mahasiswa.$1); // akses elemen pertama
  print(mahasiswa.$2); // akses elemen kedua


  var mahasiswa2 = ('first', a: 'Dedy Bayu Setiawan', b: '2341720041', 'last');

  print(mahasiswa2.$1); // Prints 'first'
  print(mahasiswa2.a); // Prints 2
  print(mahasiswa2.b); // Prints true
  print(mahasiswa2.$2); // Prints 'last'
}

(int, int) tukar((int, int) record) {
  var (a, b) = record;
  return (b, a);
}
