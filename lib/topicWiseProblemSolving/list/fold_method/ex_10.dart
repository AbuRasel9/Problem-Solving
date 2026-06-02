//sum of all odd number and find all odd number
void main(){
  List<int> list=[2,3,4,5,6,7,8,9];
  //sum of all odd number
  int sumOffOdd=list.fold(0, (previousNumber,currentNumber)=>currentNumber.isOdd?previousNumber+currentNumber:previousNumber);
  print("sum of all odd number :$sumOffOdd");
  //find all odd number
List<int> oddNumbers=list.fold([], (previousNumber,currentNumber)=>currentNumber.isEven?[...previousNumber,currentNumber]:previousNumber);
print("all odd number from list $oddNumbers");

}