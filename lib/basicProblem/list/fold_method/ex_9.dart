//sum of all even number
void main(){
  List<int> list=[2,3,4,5,6,76,8,98,];
  int sumOfEven=list.fold(0, (previousNumber,currentNumber)=>currentNumber.isEven?(previousNumber+currentNumber):previousNumber);
  print("sum of all even number form list $sumOfEven");
  //find all even number form list
  //akhane [...previousNumber,currentNumber] atar mane previous list er modde current number add kore return kora
  List<int>evenNumbers=list.fold([], (previousNumber,currentNumber)=>currentNumber.isEven?[...previousNumber,currentNumber]:previousNumber);
  print("find all even number use fold method :$evenNumbers");


}