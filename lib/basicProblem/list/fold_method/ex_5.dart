//calculate all string length from the list
//akhane sob string gular length koto hobe tar sum kora hoice

void main(){
  List<String>countries=["bangladesh","india","pakistan","japan"];
  int sumAllStringLength=countries.fold(0, (totalLength,currentStringLength)=>totalLength+currentStringLength.length);

  print("sum of all string length from the list :$sumAllStringLength");
}