import 'dart:io';

void main(){

  checkPalindromeNum();
  //string value reverse koreci kono split use na kore
  checkPalindromeStringValue();

}

//palindrome kina int number er jnne

void checkPalindromeNum(){
  print("Enter  numbers: ");
  int num=int.parse(stdin.readLineSync()!);
  //while loop use kore age number gula calculation er maddhome reverse kora hoice
  //tarpor 2ta equal kina check disi
  int temp=num;
  int rev=0;
while(num>0){
  int digit=num%10;
  rev=rev*10+digit;
  num~/=10;
}
if(temp==rev){
  print("$temp is palindrome number.and reverse number $rev");
}else{
  print("$temp is not palindrome number. and reverse number $rev");
}




//string value palindrome check kono split use na kore
}
void checkPalindromeStringValue(){
  print("please enter a value for check palindrome or not :");
  String value=stdin.readLineSync()!;
  String rev="";
  String tem=value;
  for(int i=value.length;i<=0;i--){
    rev+=value[i];

  }
  if(tem==rev){
    print("$tem is palindrome.and reverse value $rev");
  }else{
    print("$tem is not palindrome. and reverse value $rev");
  }

}
