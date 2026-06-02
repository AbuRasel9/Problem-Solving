//find the smallest number from the list
void main(){
  List<int> list=[1,2,1,0,2,3,5,6,7];
  int smallestNumber=list.fold(list.first, (smallestValue,num)=>smallestValue<num ?smallestValue :num);
  print("smallest number from the list $smallestNumber");
}