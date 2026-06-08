void main(){
  List countries=["Bangladesh","India","Japan","China"];
  if(countries.contains("India")){
    countries.remove("India");
  }
  print(countries);
}