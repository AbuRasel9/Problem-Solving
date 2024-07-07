/*
  Read the four values corresponding to the x and y axes of two points in the plane, p1 (x1, y1) and
  p2 (x2, y2) and calculate the distance between them, showing four decimal places, according to the formula:

Distance =

Input
The input file contains two lines of data. The first one contains two double values: x1 y1 and the second one also contains
two double values with one digit after the decimal point: x2 y2.

Output
Calculate and print the distance value using the provided formula, with 4 decimal places.
*/
import 'dart:io';
import 'dart:math';

void main() {
  List<String> x = stdin.readLineSync()!.split(" ");
  List<String> y = stdin.readLineSync()!.split(" ");
  double x1=double.parse(x[0]);

  double y1=double.parse(x[1]);
  double x2=double.parse(y[0]);
  double y2=double.parse(y[1]);
  double p1 =  x2-x1;
  double p2 =  y2-y1;

  print(sqrt((p1*p1) + (p2*p2)).toStringAsFixed(4));
}