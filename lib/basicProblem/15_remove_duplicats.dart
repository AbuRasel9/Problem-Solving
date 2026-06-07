void main() {
  // একটি লিস্ট তৈরি করা যাতে ডুপ্লিকেট সংখ্যা আছে
  List<int> list = [1, 3, 2, 1, 2, 4, 6, 7, 8];
  
  // ডুপ্লিকেট সরানোর ফাংশন কল করা
  removeDuplicates(list);
}

/*
উদাহরণ:
ইনপুট: [1, 2, 1, 3]
ডুপ্লিকেট সরানোর পর: [1, 2, 3]
সর্ট করার পর: [1, 2, 3]
*/

void removeDuplicates(List<int> list) {
  List<int> uniqueList = [];

  // লুপ চালিয়ে প্রতিটি সংখ্যা চেক করা
  for (int i in list) {
    // যদি সংখ্যাটি uniqueList-এ আগে থেকে না থাকে, তবেই যোগ করা হবে
    if (!uniqueList.contains(i)) {
      uniqueList.add(i);
    }
  }

  print("After removing all duplicate values: $uniqueList");

  // লিস্টটি ছোট থেকে বড় ক্রমানুসারে সাজানো
  // sort() মেথডটি লিস্টকে সরাসরি পরিবর্তন করে (In-place sort)
  uniqueList.sort();

  print("After sorting all elements: $uniqueList");
}
