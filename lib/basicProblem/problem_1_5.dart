
import 'dart:io';

void main(){
  //check vowel or consonant
  checkVowelOrConsonant();
  //find factorial number
  factorialNumber(6);
  //recursive function use kore factorial
  print("recursive function factorial ${factrialRecurrssive(6)}");
  //big int use kore factorial
  factorialWithBigInt(20);

}
//1: find vowel or consonant
void checkVowelOrConsonant(){
  print("Please enter only one character : ");
  String ch=stdin.readLineSync()!;
  if(ch.isEmpty || (RegExp(r'[a-z]').hasMatch(ch)) || ch.length>1){
    print("Please Enter valid character. enter only one character");

  }else if('aeiou'.contains(ch)){
    print("Vowel");
  }else {
    print("consonant");
  }
}
//2 factorial number
void factorialNumber(int num){
  int fact=1;
  for(int i=1;i<=num;i++){
    fact*=i;

  }
  print("$num factorial = $fact");
}

// recursive use kore factorial
int factrialRecurrssive(int num){
  if(num<=1){
    return 1;
  }else{
    return num*factrialRecurrssive(num-1);

  }
}
/*
BigInt ব্যবহার করে (বড় সংখ্যার জন্য)ফ্যাক্টোরিয়াল খুব দ্রুত বড় হয়ে যায়।
আপনি যদি ২০ এর বেশি সংখ্যার ফ্যাক্টোরিয়াল বের করতে চান,
তবে সাধারণ int কাজ করবে না (Overflow হবে)। সেক্ষেত্রে BigInt ব্যবহার করতে হয়।
 */
void factorialWithBigInt(int num){
  //BigInt.one দিয়ে ভেরিয়েবলটির শুরুর মান ১ সেট করে দেওয়া হয়েছে। (সাধারণ নিয়মে আমরা যেমন int fact = 1; লিখি, এটি ঠিক তারই BigInt ভার্সন)।
  BigInt fact=BigInt.one;
  for (int i=1;i<=num;i++){
  // এখানে লুপের বর্তমান মান i-কে প্রথমে BigInt.from(i) দিয়ে BigInt ফরম্যাটে কনভার্ট করা হচ্ছে (কারণ BigInt এর সাথে সাধারণ int সরাসরি গুণ করা যায় না)।
    fact*=BigInt.from(i);
  }
  print("Num:$num  and factorial $fact use big int");
}

// void checkVowelOrConsonent(){
//   print("Enter a character: ");
//   String ch=stdin.readLineSync()!;
//   if(ch.isEmpty || ch.length>1){
//     print("Error: Please enter exactly one alphabetic character");
//   }else if(!RegExp(r'[a-z]').hasMatch(ch)){
//     print("Error $ch in not a valid letter");
//   }
//
//   else if("aeiou".contains(ch)){
//     print("$ch is vowel");
//   }else if(!"aeiou".contains(ch)){
//     print("consonent");
//
//   }else {
//     print("Invalid character");
//   }
// }