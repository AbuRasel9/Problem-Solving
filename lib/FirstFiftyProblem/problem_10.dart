import 'dart:io';

void main(){
  String product1=stdin.readLineSync()!;
  String product2=stdin.readLineSync()!;

  List product1Value=product1.split(" ");
  List product2Value=product2.split(" ");

  double product1Price=int.parse(product1Value[1])*double.parse(product1Value[2]);
  double product2Price=int.parse(product2Value[1])*double.parse(product2Value[2]);
  
  double price=product1Price+product2Price;
  
  print("VALOR A PAGAR: R\$ ${price.toStringAsFixed(2)}");
}