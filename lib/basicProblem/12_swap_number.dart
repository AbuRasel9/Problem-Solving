import 'dart:io';

void main() {
  // ব্যবহারকারীর কাছ থেকে প্রথম সংখ্যা ইনপুট নেওয়া
  print("Enter num1: ");
  int num1 = int.parse(stdin.readLineSync()!);

  // ব্যবহারকারীর কাছ থেকে দ্বিতীয় সংখ্যা ইনপুট নেওয়া
  print("Enter num2: ");
  int num2 = int.parse(stdin.readLineSync()!);

  /*
  সোয়াপিং (Swapping) এর উদাহরণ:
  শুরুতে ধরা যাক: num1 = 10, num2 = 20
  
  ধাপ ১: temp = num1 (এখানে temp এর মান হবে ১০)
  ধাপ ২: num1 = num2 (এখন num1 এর মান হবে ২০)
  ধাপ ৩: num2 = temp (এখন num2 এর মান হবে ১০)
  
  ফলাফল: num1 = 20, num2 = 10
  */

  // একটি অস্থায়ী (temp) ভ্যারিয়েবল ব্যবহার করে মান অদলবদল করা
  int temp = num1; // num1 এর মান নিরাপদে temp ভ্যারিয়েবলে রাখা হলো
  num1 = num2;     // num2 এর মান num1 এ সেট করা হলো
  num2 = temp;     // temp এ রাখা মানটি (যা আসলে আগের num1) num2 এ সেট করা হলো

  // অদলবদল করার পর ফলাফল প্রিন্ট করা
  print("After swapping: num1 = $num1 and num2 = $num2");
}
