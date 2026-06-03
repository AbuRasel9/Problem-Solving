import 'dart:io';

void main(){
  //koita number ase seta count kora
  //একটি number এ কত digit আছে?
  countNumber();
}
void countNumber(){

  print("Enter a integer numbers: ");
  int num=int.parse(stdin.readLineSync()!);
  int count=0;
  while(num>0){
    count++;
    num=num~/10;
    
  }
  print("total  number $count");

}