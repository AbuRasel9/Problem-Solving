import 'dart:io';

void main(){
  print("Enter String value : ");
  String value=stdin.readLineSync()!;
  reverseString(value);
  
}
void reverseString(String value){
  String reverseValue=value.split("").reversed.join("");
  print("Original text: $value and reverse text: $reverseValue");
  
}