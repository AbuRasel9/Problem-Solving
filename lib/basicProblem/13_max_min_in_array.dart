void main() {
  // একটি সংখ্যার লিস্ট (Array) তৈরি করা
  List<int> list = [1, 3, 5, 62, 2, 4, 66];

  // সর্বোচ্চ সংখ্যা বের করার ফাংশন কল করা
  maximumArray(list);

  // সর্বনিম্ন সংখ্যা বের করার ফাংশন কল করা
  minimumNumArray(list);
}

/*
উদাহরণ (Example): List = [10, 5, 20]

সর্বোচ্চ (Max) খোঁজার ধাপ:
১. ধরি max = 10 (প্রথম সংখ্যা)
২. ৫ কি ১০ এর চেয়ে বড়? না।
৩. ২০ কি ১০ এর চেয়ে বড়? হ্যাঁ। তাহলে max = 20.

ফলাফল: ২০
*/

// লিস্ট থেকে সর্বোচ্চ সংখ্যা বের করার ফাংশন
void maximumArray(List<int> list) {
  int maxNum = list[0]; // শুরুতে প্রথম সংখ্যাটিকে সর্বোচ্চ ধরে নেওয়া
  
  // লুপ চালিয়ে লিস্টের প্রতিটি সংখ্যার সাথে তুলনা করা
  for (int i in list) {
    if (i > maxNum) {
      maxNum = i; // যদি বর্তমান সংখ্যাটি maxNum এর চেয়ে বড় হয়, তবে তাকেই নতুন maxNum বানানো
    }
  }
  print("maximum number of the list $maxNum");
}

// লিস্ট থেকে সর্বনিম্ন সংখ্যা বের করার ফাংশন
void minimumNumArray(List<int> list) {
  int minNum = list[0]; // শুরুতে প্রথম সংখ্যাটিকে সর্বনিম্ন ধরে নেওয়া
  
  // লুপ চালিয়ে লিস্টের প্রতিটি সংখ্যার সাথে তুলনা করা
  for (int i in list) {
    if (i < minNum) {
      minNum = i; // যদি বর্তমান সংখ্যাটি minNum এর চেয়ে ছোট হয়, তবে তাকেই নতুন minNum বানানো
    }
  }
  print("minimum number of the list $minNum");
}
