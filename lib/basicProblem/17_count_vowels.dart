

import 'dart:io';

void main(){
  print("Enter values : ");
  String value=stdin.readLineSync()!;
  countVowelsAndConsonent(value);

}
void countVowelsAndConsonent(String value){
  int countVowels=0;
  int countConsonent=0;
  for(String i in value.split("")){
    if("aeiou".contains(i)){
      countVowels++;
    }else{
      countConsonent++;
    }
  }
  print("the string have $countVowels vowels and $countConsonent consonant");


}