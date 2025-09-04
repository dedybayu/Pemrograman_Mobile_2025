void main() {
  String name = "Dedy";     // Wajib diisi, tidak boleh null
  String? nickname;         // Bisa null karena ada tanda ?

  print(name);              // ✅ Output: Dedy
  print(nickname);          // ✅ Output: null

  nickname = "Bayu";
  print(nickname);          // ✅ Output: Bayu
}
