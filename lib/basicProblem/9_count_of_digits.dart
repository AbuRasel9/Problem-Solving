import 'dart:io';

void main() {
  // ব্যবহারকারীর কাছ থেকে একটি সংখ্যা ইনপুট নেওয়া
  print("Enter numbers: ");
  int num = int.parse(stdin.readLineSync()!);

  // ডিজিট গণনার ফাংশনটি কল করা
  countDigit(num: num);
}

// একটি সংখ্যার মধ্যে মোট কতটি অংক (digit) আছে তা বের করার ফাংশন
void countDigit({required int num}) {
  int temp = num; // মূল সংখ্যাটি পরে প্রিন্ট করার জন্য সেভ করে রাখা
  int count = 0;  // ডিজিট গণনার জন্য কাউন্টার

  // যতক্ষণ পর্যন্ত সংখ্যাটি ০ এর চেয়ে বড় থাকবে, ততক্ষণ লুপ চলবে
  while (num > 0) {
    count++;      // প্রতিবার লুপ ঘুরলে কাউন্টার ১ করে বাড়বে
    num ~/= 10;   // সংখ্যাটিকে ১০ দিয়ে ভাগ করে (Integer Division) শেষ ডিজিটটি বাদ দেওয়া
  }

  // ফলাফল প্রিন্ট করা
  print("num: $temp and total digit ${count}");
}
