import 'dart:io';

void main() {
  int time = int.parse(stdin.readLineSync()!);
  int minutes = time ~/ 60;

  int second = time % 60;
  int hour = minutes ~/ 60;
  minutes = minutes % 60;
  print("$hour:$minutes:$second");
}
