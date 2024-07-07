/*
  Make a program that reads three floating point values: A, B and C. Then, calculate and show:
a) the area of the  triangle that has base A and height C.
b) the area of the radius's circle C. (pi = 3.14159)
c) the area of the trapezium which has A and B by base, and C by height.
d) the area of the square that has side B.
e) the area of the rectangle that has sides A and B.

Input
The input file contains three double values with one digit after the decimal point.

Output
The output file must contain 5 lines of data. Each line corresponds to one of the areas described above, always with a corresponding message (in Portuguese) and one space between the two points and the value. The value calculated must be presented with 3 digits after the decimal point.


*/

import 'dart:io';
import 'dart:math';

void main() {
  List<String> inputs = stdin.readLineSync()!.split(' ');

  double a = double.parse(inputs[0]);
  double b = double.parse(inputs[1]);
  double c = double.parse(inputs[2]);

  double triangle = 0.5 * a * c;
  double circle = 3.14159 * c * c;
  double trapezium = (a + b) / 2.0 * c;
  double square = b * b;
  double rectangle = a * b;


  print('TRIANGULO: ${triangle.toStringAsFixed(3)}');
  print('CIRCULO: ${circle.toStringAsFixed(3)}');
  print('TRAPEZIO: ${trapezium.toStringAsFixed(3)}');
  print('QUADRADO: ${square.toStringAsFixed(3)}');
  print('RETANGULO: ${rectangle.toStringAsFixed(3)}');
}
