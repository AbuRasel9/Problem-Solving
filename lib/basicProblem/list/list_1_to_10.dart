void main() {
  print("--- List Problem Solving (1 to 12) ---\n");

  // ১. লিস্টে একটি আইটেম যোগ করা
  addItem();

  // ২. লিস্টে অন্য একটি লিস্টের সব আইটেম যোগ করা
  addAllItems();

  // ৩. নির্দিষ্ট ইন্ডেক্সে একটি আইটেম যোগ করা (Insert)
  insertItem();

  // ৪. নির্দিষ্ট ইন্ডেক্সে একাধিক আইটেম যোগ করা (InsertAll)
  insertAllItems();

  // ৫. লিস্ট থেকে নির্দিষ্ট ভ্যালু রিমুভ করা
  removeItem();

  // ৬. লিস্টের নির্দিষ্ট পজিশন থেকে আইটেম রিমুভ করা
  removeAtItem();

  // ৭. লিস্টে কোনো আইটেম আছে কি না তা চেক করা (Contains)
  containsItem();

  // ৮. কোনো আইটেম কত নম্বর ইন্ডেক্সে আছে তা বের করা (IndexOf)
  indexOfItem();

  // ৯. নির্দিষ্ট রেঞ্জ বা সীমার আইটেম মুছে ফেলা (RemoveRange)
  removeRangeItems();

  // ১০. নির্দিষ্ট রেঞ্জ বা সীমার আইটেম পরিবর্তন করা (ReplaceRange)
  replaceRangeItems();

  // ১১. শর্ত অনুযায়ী ডাটা ফিল্টার করা (Where)
  WhereItem();

  // ১২. শর্ত পূরণ করে এমন প্রথম ডাটা খুঁজে বের করা (FirstWhere)
  firstWhereItem();
}

// ১. add() - লিস্টের একদম শেষে নতুন ডাটা যোগ করার জন্য
void addItem() {
  print("1. Add Item:");
  List<String> fruits = ["Banana", "Apple", "Orange"];
  fruits.add("Pineapple"); 
  print("Result: $fruits\n");
}

// ২. addAll() - শেষে অন্য একটি লিস্টের সব ডাটা যোগ করার জন্য
void addAllItems() {
  print("2. Add All Items:");
  List<String> fruits = ["Banana", "Apple"];
  List<String> trees = ["Mango tree", "Lemon tree"];
  fruits.addAll(trees); 
  print("Result: $fruits\n");
}

// ৩. insert() - নির্দিষ্ট কোনো পজিশনে একটি ডাটা বসানোর জন্য
void insertItem() {
  print("3. Insert Item:");
  List countries = ["Bangladesh", "India", "Pakistan"];
  // ১ নম্বর ইন্ডেক্সে Nepal বসানো হলো
  countries.insert(1, "Nepal");
  print("Result: $countries\n");
}

// ৪. insertAll() - নির্দিষ্ট পজিশনে একাধিক ডাটা একসাথে বসানোর জন্য
void insertAllItems() {
  print("4. Insert All Items:");
  List countries = ["USA", "UK"];
  countries.insertAll(1, ["Canada", "Germany"]);
  print("Result: $countries\n");
}

// ৫. remove() - সরাসরি ভ্যালু বা নাম ধরে মুছে ফেলার জন্য
void removeItem() {
  print("5. Remove Item:");
  List countries = ["Bangladesh", "India", "Japan"];
  countries.remove("India"); 
  print("Result: $countries\n");
}

// ৬. removeAt() - ইন্ডেক্স নম্বর ধরে মুছে ফেলার জন্য
void removeAtItem() {
  print("6. Remove At Index:");
  List countries = ["Bangladesh", "India", "Japan"];
  countries.removeAt(0); // ০ নম্বর আইটেম মুছে যাবে
  print("Result: $countries\n");
}

// ৭. contains() - আইটেমটি লিস্টে আছে কি না দেখার জন্য (True/False দেয়)
void containsItem() {
  print("7. Contains Item:");
  List countries = ["Bangladesh", "India", "Japan"];
  bool hasIndia = countries.contains("India");
  print("Does list have India? $hasIndia\n");
}

// ৮. indexOf() - আইটেমটি কত নম্বর পজিশনে আছে তা জানার জন্য
void indexOfItem() {
  print("8. Index Of Item:");
  List countries = ["Bangladesh", "India", "Japan"];
  int pos = countries.indexOf("Japan");
  print("Index of Japan is: $pos\n");
}

// ৯. removeRange() - নির্দিষ্ট শুরু থেকে শেষ পর্যন্ত ডাটা মুছে ফেলার জন্য
void removeRangeItems() {
  print("9. Remove Range:");
  List numbers = [10, 20, 30, 40, 50];
  numbers.removeRange(1, 4); // ১ থেকে ৩ পর্যন্ত মুছে যাবে
  print("Result after removeRange(1, 4): $numbers\n");
}

// ১০. replaceRange() - নির্দিষ্ট সীমার ডাটা অন্য কিছু দিয়ে বদলে ফেলার জন্য
void replaceRangeItems() {
  print("10. Replace Range:");
  List list = ["A", "B", "C", "D"];
  list.replaceRange(1, 3, ["X", "Y"]);
  print("Result after replaceRange: $list\n");
}

// ১১. where() - নির্দিষ্ট শর্ত পূরণ করে এমন সব আইটেম খুঁজে বের করার জন্য (Filtering)
// এটি মূলত লিস্টকে ফিল্টার করতে ব্যবহৃত হয়।
void WhereItem() {
  print("11. Where (Filtering):");
  List<int> ages = [15, 20, 25, 30];
  
  // শর্ত: ১৮ বছরের বেশি সব বয়স খুঁজে বের করা
  // .where() একটি Iterable দেয়, তাই শেষে .toList() ব্যবহার করে লিস্টে রূপান্তর করা হয়েছে
  List<int> result = ages.where((age) => age > 18).toList();
  
  print("Ages greater than 18 (All): $result\n");
}

// ১২. firstWhere() - শর্ত পূরণ করে এমন প্রথম আইটেমটি খুঁজে বের করার জন্য
// লিস্টে অনেকগুলো ডাটা শর্ত পূরণ করলেও এটি শুধুমাত্র প্রথম যেটি পাবে সেটি রিটার্ন করবে।
void firstWhereItem() {
  print("12. First Where:");
  List<int> ages = [15, 20, 25, 30];

  // ১৮ বছরের বেশি প্রথম যে বয়সটি পাবে সেটি রিটার্ন করবে (এখানে ২০)
  var result = ages.firstWhere((age) => age > 18);

  print("First age found greater than 18 is: $result\n");
}
