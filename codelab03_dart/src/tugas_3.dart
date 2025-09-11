void main() {
  String nama = "Dedy Bayu Setiawan"; 
  String nim = "2341720041";

  print("Bilangan Prima dari 0 sampai 201:");
  for (int i = 0; i <= 201; i++) {
    bool prima = true;

    if (i < 2) {
      prima = false;
    } else {
      for (int j = 2; j * j <= i; j++) {
        if (i % j == 0) {
          prima = false;
          break;
        }
      }
    }

    if (prima) {
      print("$i adalah bilangan prima -> Nama: $nama | NIM: $nim");
    } else {
      print("$i bukan bilangan prima");
    }
  }
}
