
/*
Read four integer values named A, B, C and D.
 Calculate and print the difference of product A and B
 by the product of C and D (A * B - C * D).


* */

import 'dart:io';

void main(){
  int A=int.parse(stdin.readLineSync()!);
  int B=int.parse(stdin.readLineSync()!);
  int C=int.parse(stdin.readLineSync()!);
  int D=int.parse(stdin.readLineSync()!);

  int result=(A*B-C*D);
  print("DIFERENCA = $result");
}