//example-1: calculate sum of all value form list

void main(){
  List<int> list=[20,2,1,2,3,5,6,7];
  int sum=list.fold(0, (previousValue,currentValue)=>previousValue+currentValue);
  print("sum of all value from list:$sum");
}//output: 46


