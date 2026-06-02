//find the greatest number form the list
void main() {
  List<int> list = [20, 2, 1, 2, 3, 5, 6, 7];
  int largestNumber =
      list.fold(list.first, (max, num) => num > max ? num : max);
  print("largest number from the list:$largestNumber");
}//output:20
