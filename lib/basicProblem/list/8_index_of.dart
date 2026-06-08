void main() {
  // একটি দেশের নামের লিস্ট তৈরি করা
  List countries = ["Bangladesh", "India", "Japan", "China", "India"];

  /*
  indexOf() মেথডটি কীভাবে কাজ করে:
  ১. এটি লিস্টের শুরু থেকে খোঁজা শুরু করে।
  ২. কাঙ্ক্ষিত আইটেমটি প্রথম যেখানে পাবে, সেই পজিশন বা ইন্ডেক্স নম্বরটি দিবে।
  ৩. যদি আইটেমটি লিস্টে না থাকে, তবে এটি -1 রিটার্ন করে।
  
  উদাহরণ (Example):
  লিস্ট: ["Apple", "Orange", "Banana"]
  ইন্ডেক্স:    0         1         2
  
  indexOf("Orange") দিলে ফলাফল আসবে: 1
  */

  // ১. "Japan" কত নম্বর ইন্ডেক্সে আছে তা বের করা
  int indexNo = countries.indexOf("Japan");
  print("The index of Japan is: $indexNo"); // আউটপুট হবে: 2

  // ২. "India" এর ইন্ডেক্স বের করা
  // লক্ষ্য করুন: ইন্ডেক্স ১ এবং ৪ উভয় জায়গাতেই "India" আছে।
  // indexOf() শুধুমাত্র প্রথমবার যেখানে পাওয়া যায় (ইন্ডেক্স ১), সেই মানটিই দেয়।
  int indiaIndex = countries.indexOf("India");
  print("The first index of India is: $indiaIndex"); // আউটপুট হবে: 1

  // ৩. লিস্টে নেই এমন কোনো আইটেম (যেমন "USA") খোঁজা
  int missingIndex = countries.indexOf("USA");
  if (missingIndex == -1) {
    print("USA is not found in the list (Result: $missingIndex)");
  } else {
    print("USA found at index: $missingIndex");
  }
}
