import 'dart:io';

void main() {
  int num = int.parse(stdin.readLineSync()!);
  int hours = int.parse(stdin.readLineSync()!);
  double amount = double.parse(stdin.readLineSync()!);

  print("NUMBER = $num");
  double result = amount * hours;
  print("SALARY = U\$ ${result.toStringAsFixed(2)}");
}
