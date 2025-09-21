void main(List<String> args) {
  // var halogens = {'fluorine', 'chlorine', 'bromine', 'iodine', 'astatine'};
  // print(halogens);

  var names1 = <String>{};
  Set<String> names2 = {}; // This works, too.
  var names3 = {}; // Creates a map, not a set.

  names1.add("Dedy Bayu Setiawan");
  names1.add("2341720041");

  names2.addAll({"Dedy Bayu Setiawan", "2341720041"});

  print(names1);
  print(names2);
  print(names3);
}
