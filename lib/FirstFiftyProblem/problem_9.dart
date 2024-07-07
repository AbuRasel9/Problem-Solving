/*
Make a program that reads a seller's name, his/her fixed salary and the sale's
total made by himself/herself in the month (in money). Considering that this seller receives 15% over
all products sold, write the final salary (total) of this seller at the end of the month ,
 with two decimal places.

- Don’t forget to print the line's end after the result, otherwise you will receive “Presentation Error”.

- Don’t forget the blank spaces.

Input
*/
import 'dart:io';

void main() {
  String name = stdin.readLineSync()!;
  double sallary = double.parse(stdin.readLineSync()!);
  double sells = double.parse(stdin.readLineSync()!);

  double bonous = (sells * (15 / 100));

  double result = sallary + bonous;
  print("TOTAL = R\$ ${result.toStringAsFixed(2)}");
}
