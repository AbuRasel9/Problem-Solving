// List-এর নির্দিষ্ট position-এ value insert করো।

void main() {
  // একটি দেশের নামের লিস্ট তৈরি করা
  List countries = ["Bangladesh", "India", "Pakistan"];

  /*
  উদাহরণ (Example):
  শুরুতে লিস্ট: ["Bangladesh", "India", "Pakistan"]
  ইন্ডেক্স (Index):      0            1           2

  আমরা যদি ইন্ডেক্স ১-এ "Nepal" যোগ করতে চাই:
  countries.insert(1, "Nepal");

  ফলাফল: ["Bangladesh", "Nepal", "India", "Pakistan"]
  এখানে "Nepal" ১ নম্বর ইন্ডেক্সে ঢুকে গেছে এবং পরের আইটেমগুলো এক ঘর পিছিয়ে গেছে।
  */

  // insert(index, element) মেথড ব্যবহার করে নির্দিষ্ট ইন্ডেক্সে ডাটা যোগ করা
  countries.insert(1, "Nepal");

  // পরিবর্তিত লিস্টটি প্রিন্ট করা
  print("After adding Nepal at index-1: $countries");
}
