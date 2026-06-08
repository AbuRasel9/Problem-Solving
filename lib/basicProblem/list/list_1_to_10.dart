void main() {
  print("--- List Problem Solving (Combined) ---\n");

  // ১. লিস্টে নতুন আইটেম যোগ করা
  addItem();

  // ২. লিস্টে অন্য একটি লিস্টের সব আইটেম যোগ করা
  addAllItems();

  // ৩. নির্দিষ্ট পজিশনে আইটেম যোগ করা (Insert)
  insertItem();

  // ৪. নির্দিষ্ট পজিশনে একাধিক আইটেম যোগ করা (InsertAll)
  insertAllItems();

  // ৫. লিস্ট থেকে নির্দিষ্ট ভ্যালু রিমুভ করা
  removeItem();

  // ৬. লিস্টের নির্দিষ্ট ইন্ডেক্স থেকে আইটেম রিমুভ করা
  removeAtItem();

  // ৭. লিস্টে কোনো আইটেম আছে কি না তা চেক করা (Contains)
  containsItem();

  // ৮. কোনো আইটেমের পজিশন বা ইন্ডেক্স বের করা (IndexOf)
  indexOfItem();
}

// ১. add() - লিস্টের শেষে একটি নতুন আইটেম যোগ করা
// উদাহরণ: [A, B] -> add(C) -> [A, B, C]
void addItem() {
  print("1. Add Item:");
  List<String> fruits = ["Banana", "Apple", "Orange"];
  fruits.add("Pineapple"); 
  print("After add: $fruits\n");
}

// ২. addAll() - একটি লিস্টের শেষে অন্য একটি লিস্টের সব আইটেম যোগ করা
// উদাহরণ: [A] + [B, C] -> [A, B, C]
void addAllItems() {
  print("2. Add All Items:");
  List<String> fruits = ["Banana", "Apple"];
  List<String> trees = ["Mango tree", "Lemon tree"];
  fruits.addAll(trees); 
  print("After addAll: $fruits\n");
}

// ৩. insert() - নির্দিষ্ট ইন্ডেক্সে একটি আইটেম বসানো
// উদাহরণ: [A, C] -> insert(1, B) -> [A, B, C]
void insertItem() {
  print("3. Insert Item:");
  List countries = ["Bangladesh", "India"];
  // ১ নম্বর পজিশনে Nepal বসবে, India ডানে সরে যাবে
  countries.insert(1, "Nepal");
  print("After insert at index 1: $countries\n");
}

// ৪. insertAll() - নির্দিষ্ট পজিশনে একাধিক আইটেম বসানো
void insertAllItems() {
  print("4. Insert All Items:");
  List countries = ["USA", "UK"];
  countries.insertAll(1, ["Canada", "Germany"]);
  print("After insertAll at index 1: $countries\n");
}

// ৫. remove() - ভ্যালুর নাম ধরে রিমুভ করা
void removeItem() {
  print("5. Remove Item:");
  List countries = ["Bangladesh", "India", "Japan"];
  countries.remove("India"); 
  print("After remove India: $countries\n");
}

// ৬. removeAt() - পজিশন নম্বর ধরে রিমুভ করা
void removeAtItem() {
  print("6. Remove At Index:");
  List countries = ["Bangladesh", "India", "Japan"];
  countries.removeAt(0); // ০ নম্বর (Bangladesh) রিমুভ হবে
  print("After removeAt index 0: $countries\n");
}

// ৭. contains() - আইটেমটি লিস্টে আছে কি না চেক করা (True/False রিটার্ন করে)
void containsItem() {
  print("7. Contains Item:");
  List countries = ["Bangladesh", "India", "Japan"];
  bool hasIndia = countries.contains("India");
  print("Does list have India? $hasIndia\n");
}

// ৮. indexOf() - আইটেমটি কত নম্বর পজিশনে আছে তা বের করা
// যদি না থাকে তবে -1 রিটার্ন করবে
void indexOfItem() {
  print("8. Index Of Item:");
  List countries = ["Bangladesh", "India", "Japan", "China"];
  int position = countries.indexOf("Japan");
  print("The index of Japan is: $position\n");
}
