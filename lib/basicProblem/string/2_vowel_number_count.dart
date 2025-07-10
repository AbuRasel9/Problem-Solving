// Problem 2: Count the number of vowels in a string
import 'dart:io';

void main(){
  print("Enter any sentence or word:");
  String input=stdin.readLineSync()!;
  vowelNumberCount(input);

}
void vowelNumberCount(String value){
  List<String> splitValue=value.split("");
  int vowelCount=0;
  String vowel="aeiouAEIOU";
  for(String char in splitValue){
    if(vowel.contains(char)){
      vowelCount++;
    }
  }
  print("this string have $vowelCount vowel number");

}