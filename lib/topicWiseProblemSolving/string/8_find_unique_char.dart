import 'dart:async';
import 'dart:io';

Map<String, int> findUniqueChar(String input) {
  Map<String, int> freq = {};
  for(String n in input.split("")){
    freq[n]=(freq[n] ??0)+1;

  }
  return freq;


}
void main(){
  print("Enter any word or sentence:");
  String input=stdin.readLineSync()!;
  List<String>allUniqueChar=[];

  //not unique character
  List<String>notUniqueChar=[];
  Map<String,int>uniqueChar=findUniqueChar(input);

  //find unique and not unique character key
  uniqueChar.forEach((key, value) {
    if(value<2){
      allUniqueChar.add(key);
    }else{
      notUniqueChar.add(key);

    }
  },);

  Map<String,int>allUniqueCharKeyValue={};
  Map<String,int>allNotUniqueCharKeyValue={};
  uniqueChar.forEach((key, value) {
    if(value<2){
      allUniqueCharKeyValue[key]=value;
    }else{
      allNotUniqueCharKeyValue[key]=value;
    }
  },);


  print("all unique char are $allUniqueChar}");
  print("${allUniqueChar.length} number are unique char present this sentence");
  print("all not unique char are ${notUniqueChar}");
  print("all unique key and value ${allUniqueCharKeyValue}");
  print("all not unique key and value${allNotUniqueCharKeyValue}");

}
