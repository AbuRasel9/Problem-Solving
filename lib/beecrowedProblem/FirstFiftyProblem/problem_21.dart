import 'dart:io';

void main() {
  double value = double.parse(stdin.readLineSync()!);
  value=double.parse(value.toStringAsFixed(2));

  if(0<=value &&  value<=1000000){
    print("NOTAS:");


    int note100 = value ~/ 100;
    print("$note100 nota(s) de R\$ 100.00");
    double reminer = value % 100;
    print("${reminer ~/ 50} nota(s) de R\$ 50.00");
    reminer = reminer % 50;

    print("${reminer ~/ 20} nota(s) de R\$ 20.00");
    reminer = reminer % 20;

    print("${reminer ~/ 10} nota(s) de R\$ 10.00");
    reminer = reminer % 10;

    print("${reminer ~/ 5} nota(s) de R\$ 5.00");
    reminer = reminer % 5;
    print("${reminer ~/ 2} nota(s) de R\$ 2.00");

    print("MOEDAS:");
    reminer = reminer % 2;
    print("${reminer ~/ 1} moeda(s) de R\$ 1.00");
    reminer = reminer % 1;
    print("${reminer ~/ .50} moeda(s) de R\$ 0.50");
    reminer = reminer % .50;
    print("${reminer ~/ .25} moeda(s) de R\$ 0.25");
    reminer = reminer % .25;
    print("${reminer ~/ .10} moeda(s) de R\$ 0.10");
    reminer = reminer % .10;
    print("${reminer ~/ .05} moeda(s) de R\$ 0.05");
    reminer = reminer % .05;
    print("${reminer ~/ .01} moeda(s) de R\$ 0.01");
  }
}
