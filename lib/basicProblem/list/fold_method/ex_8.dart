//একটি লিস্টের সংখ্যাগুলির বর্গের যোগফল বের করা
import 'dart:math';

void main(){
  List<int> list=[10,33,4,5,7,8,9,4,44,66,88];
  int sumOfSqure=list.fold(0,(previousValue, element) =>previousValue+(element*element) , );
  print("sum of squre all value $sumOfSqure");
}