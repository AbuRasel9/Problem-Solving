import 'dart:io';

void main() {
  // ব্যবহারকারীর কাছ থেকে একটি স্ট্রিং (লেখা) ইনপুট নেওয়া
  print("Enter String value : ");
  String value = stdin.readLineSync()!;
  
  // অক্ষরের সংখ্যা গণনার ফাংশনটি কল করা
  countCharacter(value);
}


/*
উদাহরণ (Example):
ইনপুট: "apple"
আউটপুট: {a: 1, p: 2, l: 1, e: 1}

লজিক:
১. স্ট্রিংটিকে প্রতিটি ক্যারেক্টারে বিভক্ত করা হয়।
২. ম্যাপের (Map) মধ্যে চেক করা হয় অক্ষরটি আগে আছে কিনা।
৩. যদি থাকে তবে তার কাউন্টার ১ বাড়ানো হয়, না থাকলে ১ হিসেবে সেট করা হয়।
*/

void countCharacter(String value) {
  // অক্ষর এবং তাদের সংখ্যা রাখার জন্য একটি Map তৈরি
  Map<String, int> charMap = {};

  // স্ট্রিংকে split("") করে প্রতিটি অক্ষরের উপর লুপ চালানো
  for (String i in value.split("")) {
    // (charMap[i] ?? 0) এর মানে হলো যদি মান না থাকে তবে ০ ধরো, তারপর তার সাথে ১ যোগ করো
    charMap[i] = (charMap[i] ?? 0) + 1;
  }

  // ফলাফল হিসেবে ম্যাপটি প্রিন্ট করা
  print("Total character counts: $charMap");
}
