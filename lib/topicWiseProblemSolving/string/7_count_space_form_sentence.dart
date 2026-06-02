//akta sentence a koita space ase tar count kora hoice akhane
import 'dart:io';

int countSpace(String input){
  return input.split("").where((n) => (n==" "),).length;
}

void main(){
  print("enter any sentence:");
  String input=stdin.readLineSync()!;
  print("this sentence have ${countSpace(input)} space");
}