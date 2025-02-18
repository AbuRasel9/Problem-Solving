//example-2 :multiplication of all value in list
void main(){
  List<int> list=[20,2,1,2,3,5,6,7];
  int multiplication=list.fold(1, (previousValue,currentValue)=>previousValue*currentValue);
  print("multiplication value form list all value $multiplication");


}//output 50400
