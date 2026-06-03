import 'dart:io';

void main() {
  print("Enter number: ");
  int n = int.parse(stdin.readLineSync()!);

  // ফর লুপ ব্যবহার করে ফ্যাক্টোরিয়াল ক্যালকুলেশন
  forLoopFactorial(n: n);

  // রিকার্সন ব্যবহার করে ফ্যাক্টোরিয়াল ক্যালকুলেশন
  int res = recursiveFactorial(n: n);
  print("Recursive result: $res");
}

// ফর লুপ ব্যবহার করে ফ্যাক্টোরিয়াল বের করার পদ্ধতি
forLoopFactorial({required int n}) {
  int fact = 1;
  // n থেকে শুরু করে ১ পর্যন্ত প্রতিটি সংখ্যা গুণ করা
  for (int i = n; i >= 1; i--) {
    fact *= i;
  }
  print("num: $n and factorial $fact");
}

// রিকার্সন (Recursion) ব্যবহার করে ফ্যাক্টোরিয়াল বের করার পদ্ধতি
int recursiveFactorial({required int n}) {
  // বেস কন্ডিশন: n যদি ১ বা তার বেশি হয়
  if (n >= 1) {
    return n * recursiveFactorial(n: n - 1);
  } else {
    // n যদি ০ হয় তবে ১ রিটার্ন করবে
    return 1;
  }
}
