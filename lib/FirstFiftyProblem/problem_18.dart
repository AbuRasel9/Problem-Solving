import 'dart:io';

/*576
5 nota(s) de R$ 100,00
1 nota(s) de R$ 50,00
1 nota(s) de R$ 20,00
0 nota(s) de R$ 10,00
1 nota(s) de R$ 5,00
0 nota(s) de R$ 2,00
1 nota(s) de R$ 1,00*/

void main() {
  int taka = int.parse(stdin.readLineSync()!);
  if (0 < taka && taka < 1000000) {
    print(taka);

    print("${taka ~/ 100} nota(s) de R\$ 100,00");
    int reminder = taka % 100;

    print("${reminder ~/ 50} nota(s) de R\$ 50,00");
    reminder = reminder % 50;

    print("${reminder ~/ 20} nota(s) de R\$ 20,00");
    reminder = reminder % 20;

    print("${reminder ~/ 10} nota(s) de R\$ 10,00");
    reminder = reminder % 10;

    print("${reminder ~/ 5} nota(s) de R\$ 5,00");
    reminder = reminder % 5;

    print("${reminder ~/ 2} nota(s) de R\$ 2,00");
    reminder = reminder % 2;

    print("${reminder ~/ 1} nota(s) de R\$ 1,00");
  }
}
