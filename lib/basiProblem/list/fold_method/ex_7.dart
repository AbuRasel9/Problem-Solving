//একটি লিস্টের সংখ্যাগুলির গড় বের করা
void main(){
  List<int> list=[10,33,4,5,7,8,9,4,44,66,88];
  double average=list.fold(0, (previousValue,currentValue)=>previousValue+currentValue)/list.length;
  print("average all value from the list $average");
}