/*
    Read three values (variables A, B and C), which are the three student's grades.
    Then, calculate the average, considering that grade A has weight 2, grade B has weight 3 and
    the grade C has weight 5. Consider that each grade can go from 0 to 10.0,
    always with one decimal place.
    formula weight
    w1*X1 + w2*X2 + w3*X3……………+ wn*Xn
 */
import 'dart:io';

void main() {
  double A = double.parse(stdin.readLineSync()!);
  double B = double.parse(stdin.readLineSync()!);
  double C = double.parse(stdin.readLineSync()!);

  double av = (A * 2 + B * 3 + C * 5) / (2 + 3 + 5);
  print("MEDIA = ${av.toStringAsFixed(1)}");
}
