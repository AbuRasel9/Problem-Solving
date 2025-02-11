import 'dart:io';

void main(){
  int d=int.parse(stdin.readLineSync()!);

  int day=d%365;
  int year=d~/365;
  int month=day~/30;
  day=day%30;

  print("$year ano(s)");
  print("$month mes(es)");
  print("$day dia(s)");

}