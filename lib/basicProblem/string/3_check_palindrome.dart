// Problem 3: Check if a string is a palindrome (same forwards and backwards)
import 'dart:io';

void main() {
  print("Enter any word");
  String input = stdin.readLineSync()!;
  print('$input is palidrome ${isPalindrome(palindromeInput: input)}');
}

bool isPalindrome({required String palindromeInput}) {
  return palindromeInput.split("").reversed.join("") == palindromeInput;
}
