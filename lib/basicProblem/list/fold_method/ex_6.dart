//একটি লিস্টের স্ট্রিংগুলিকে একটি স্ট্রিংয়ে যুক্ত করা
void main(){
  List<String>countries=["bangladesh","india","pakistan","japan"];
  String joinString=countries.fold("", (previousString,currentString)=>previousString+currentString);
  print("join string from list of string to one string $joinString");
}