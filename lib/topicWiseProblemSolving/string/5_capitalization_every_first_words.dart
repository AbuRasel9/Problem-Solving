import 'dart:io';

String capitalizarion(String sentence){
  //akhane sple
  return sentence.split(" ").map((e) => e[0].toUpperCase()+e.substring(1),).join(" ");
}


void main(){
  print("Enter any sentence");
  String sentence=stdin.readLineSync()!;
  print("original sentence ${sentence}");
  print("After all word start char capital: ${capitalizarion(sentence)}");
}