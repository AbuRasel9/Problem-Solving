void main() {
  // একটি দেশের নামের লিস্ট তৈরি করা
  List countries = ["Bangladesh", "India", "Japan", "China", "India"];

  /*
  indexOf() এর কাজ এবং লজিক:
  -------------------------
  ১. এটি লিস্টের শুরু থেকে (Index 0) নির্দিষ্ট ডাটাটি খোঁজা শুরু করে।
  ২. ডাটাটি পাওয়া গেলে ওই পজিশনের ইন্ডেক্স নম্বর রিটার্ন করে।
  ৩. যদি একই ডাটা একাধিকবার থাকে, তবে এটি প্রথম যেবার পাবে সেই পজিশনটি দিবে।
  ৪. যদি ডাটাটি লিস্টে না থাকে, তবে এটি -1 রিটার্ন করে।
  
  উদাহরণ:
  লিস্ট: ["Apple", "Orange", "Banana"]
  ইন্ডেক্স:    0         1         2
  indexOf("Orange") দিলে আউটপুট আসবে: 1
  */

  // ১. "Japan" কত নম্বর ইন্ডেক্সে আছে তা বের করা
  int japanPos = countries.indexOf("Japan");
  print("Japan is at index: $japanPos"); // আউটপুট: 2

  // ২. "India" এর পজিশন বের করা
  // এখানে ১ এবং ৪ নম্বর ইন্ডেক্সে India আছে, কিন্তু indexOf() প্রথমটি (1) দিবে।
  int indiaPos = countries.indexOf("India");
  print("First index of India is: $indiaPos"); // আউটপুট: 1

  // ৩. এমন একটি নাম খোঁজা যা লিস্টে নেই (যেমন "Brazil")
  int missingPos = countries.indexOf("Brazil");
  
  // রেজাল্ট যদি -1 হয়, তার মানে আইটেমটি লিস্টে নেই
  if (missingPos == -1) {
    print("Brazil is not in our country list (Index: $missingPos)");
  }
}
