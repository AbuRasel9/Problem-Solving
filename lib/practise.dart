void main() {
  String a = "listen";
  String b = "silent";

  List<String> a1 = a.split("")..sort();
  List<String> b1 = b.split("")..sort();
  print(a1);
  print(b1);

  print(a1.join() == b1.join());
}