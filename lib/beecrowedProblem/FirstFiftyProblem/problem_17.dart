import 'dart:io';

void main(){
  int time=int.parse(stdin.readLineSync()!);
  int speed=int.parse(stdin.readLineSync()!);
  print(((time*speed)/12).toStringAsFixed(3));
}