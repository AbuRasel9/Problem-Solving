// ম্যাপ ব্যবহার করে প্রতিটি অক্ষরের গণনা করেছি এবং সবচেয়ে বেশি বার এসেছে এমনটি রিটার্ন করেছি।
checkMostFrequentChar(String character){
  Map<String,int> freq={};
  for(String char in character.split("")){
    freq[char]=(freq[char] ?? 0)+1;

  }
return freq.entries.reduce((a, b) => a.value>b.value?a:b,);
}

void main(){
  print("most frequent character:${checkMostFrequentChar("hello")}");
}