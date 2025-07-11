import 'dart:io';

int countNumber(String value){
  int count=0;
  for(int i=0;i<value.length;i++){
    if(value[i].contains(RegExp(r"[0-9]"))){
      count++;
    }
  }
  return count;
}
void main(){
  print("please enter any selentence where should be present number or character:");
  String input=stdin.readLineSync()!;
  print("this sentence have present ${countNumber(input)} number ");
}