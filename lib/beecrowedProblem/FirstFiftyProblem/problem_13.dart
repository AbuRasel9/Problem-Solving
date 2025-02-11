/*
 Make a program that reads 3 integer values and present the greatest one followed by the message
 "eh o maior". Use the following formula:
*/
import 'dart:io';

void main() {
  List<String> input = stdin.readLineSync()!.split(" ");
  int a = int.parse(input[0]);
  int b = int.parse(input[1]);
  int c = int.parse(input[2]);
  int maiorAB = (a + b + (a - b).abs()) ~/ 2;
  int maior = (maiorAB + c + (maiorAB - c).abs()) ~/ 2;
  print("$maior eh o maior");
}
