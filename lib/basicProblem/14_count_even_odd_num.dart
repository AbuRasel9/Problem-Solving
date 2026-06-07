import 'dart:io';

void main() {
  // একটি সংখ্যার লিস্ট (Array) তৈরি করা
  List<int> list = [1, 45, 6, 4, 3, 2, 5, 7, 9, 1];

  // জোড় সংখ্যা গণনার ফাংশন কল করা
  countEvenNum(list);

  // বিজোড় সংখ্যা গণনার ফাংশন কল করা
  countOddNum(list);
}

/*
উদাহরণ (Example):
লিস্ট: [10, 21, 32, 43]

১. জোড় (Even): যে সংখ্যাকে ২ দিয়ে ভাগ করলে ভাগশেষ ০ হয় (num % 2 == 0)। 
   এখানে ১০ এবং ৩২ হলো জোড় সংখ্যা।
২. বিজোড় (Odd): যে সংখ্যাকে ২ দিয়ে ভাগ করলে ভাগশেষ ০ হয় না (num % 2 != 0)। 
   এখানে ২১ এবং ৪৩ হলো বিজোড় সংখ্যা।
*/

// লিস্টে কতটি জোড় সংখ্যা আছে তা বের করার ফাংশন
void countEvenNum(List<int> list) {
  int countEvenNum = 0; // জোড় সংখ্যার জন্য একটি কাউন্টার ভ্যারিয়েবল
  
  // লুপ চালিয়ে লিস্টের প্রতিটি সংখ্যা চেক করা
  for (int i in list) {
    if (i % 2 == 0) {
      countEvenNum++; // যদি ২ দিয়ে ভাগ করলে ভাগশেষ ০ হয়, তবে কাউন্টার ১ বাড়বে
    }
  }
  print("Total even number present in list $countEvenNum");
}

// লিস্টে কতটি বিজোড় সংখ্যা আছে তা বের করার ফাংশন
void countOddNum(List<int> list) {
  int countoddNum = 0; // বিজোড় সংখ্যার জন্য একটি কাউন্টার ভ্যারিয়েবল
  
  // লুপ চালিয়ে লিস্টের প্রতিটি সংখ্যা চেক করা
  for (int i in list) {
    if (i % 2 != 0) {
      countoddNum++; // যদি ২ দিয়ে ভাগ করলে ভাগশেষ ০ না হয়, তবে কাউন্টার ১ বাড়বে
    }
  }
  print("Total odd number present in list $countoddNum");
}
