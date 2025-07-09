import 'dart:io';
//  Problem 1: Reverse a string without using .split().reversed.join()
void main(){
  print("Please Enter any Sentence:");
  String sentence=stdin.readLineSync()!;
  reverseString(sentence);

}
void reverseString(String value){
  String reverseValue="";
  for(int i=value.length-1;i>=0;i--){
    reverseValue+=value[i];

  }
  print("Original String : $value\n reverse String : $reverseValue");

}