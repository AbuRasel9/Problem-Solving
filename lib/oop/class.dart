//class holo blueprint for creating object
//class er vitor data and object thake seigula oi class er characteristics (বৈশিষ্ট্য) thake

void main(){
  //creating person class instance
  Person person=Person();
  //set value for person class variable
  person.name="Rasel";
  person.age=25;
  person.universityName="Presidency University";
  //call method/function
  person.personDetails();
  //first time person details print first set person details (name:rasel,age:25,university:presidency university
  //set another details for person class variable
  person.name="Rakib";
  person.age=35;
  person.universityName="Prime Aisa";
  //again call person details function
  person.personDetails();

}


class Person {
  String? name;
  int? age;
  String? universityName;
  void personDetails(){
    print("My name is $name");
    print("My Age $age");
    print("My University Name $universityName");
  }
}
