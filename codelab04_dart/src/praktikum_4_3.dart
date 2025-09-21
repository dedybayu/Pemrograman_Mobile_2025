void main(List<String> args) {
  var gifts = {
    // Key:    Value
    'first': 'partridge',
    'second': 'turtledoves',
    'fifth': 1,
  };

  var nobleGases = {2: 'helium', 10: 'neon', 18: 2};

  print(gifts);
  print(nobleGases);

  var mhs1 = Map<String, String>();
  gifts['first'] = 'partridge';
  gifts['second'] = 'turtledoves';
  gifts['fifth'] = 'golden rings';

  var mhs2 = Map<int, String>();
  nobleGases[2] = 'helium';
  nobleGases[10] = 'neon';
  nobleGases[18] = 'argon';
  
  gifts['nama'] = 'Dedy Bayu Setiawan';
  gifts['nim'] = '2341720041';

  nobleGases[20] = 'Dedy Bayu Setiawan';
  nobleGases[21] = '2341720041';

  mhs1['nama'] = 'Dedy Bayu Setiawan';
  mhs1['nim'] = '2341720041';

  mhs2[99] = 'Dedy Bayu Setiawan';
  mhs2[100] = '2341720041';

  print(gifts);
  print(nobleGases);
  print(mhs1);
  print(mhs2);
}
