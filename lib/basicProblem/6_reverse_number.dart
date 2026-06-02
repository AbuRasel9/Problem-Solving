import 'dart:io';

void main() {
  print("Enter a multiple number for reverse: ");
  int originalNumber = int.parse(stdin.readLineSync()!);
  //reverse number
  convertReverseNumber(originalNumber: originalNumber);
}
//split use kore o kora jai

void splitReverseNum({required int originalNumber}) {
  String reverseNum=originalNumber.toString().split("").reversed.join("");
}
//ata math calculation use kore kora jai
convertReverseNumber({required int originalNumber}) {
  int reverseNumber = 0;
  while (originalNumber > 0) {
    int digit = originalNumber % 10;
    reverseNumber = reverseNumber * 10 + digit;
    originalNumber = originalNumber ~/ 10;
  }
  print(reverseNumber);
}
