//create class/model
//set value in model for set value use setFunction
//print value use print function/method


void main(){
  //object create
  Person person1=Person();
  //set value
  person1.setValue("Abu Rasel", "Dhaka,Badda-natunBazar", "01770995451");
  //print all value
  person1.displayValue();

  //object create
  Person person2=Person();
  //set value
  person2.setValue("Rakib", "Barisal", "01303228480");
  //print value
  person2.displayValue();
}

class Person{
  //decleare variable
  String? name,address,phone;

  //set value use function/method
  void setValue(String n,add,ph){
    name=n;
    address=add;
    phone=ph;
  }

  //print value use print function/method
  void displayValue(){
    print("My name is $name");
    print("My address $address");
    print("My phone number $phone}");
    print("");
}

}












//create class  than set data and call method for print
//method create in under the class
//create class or model





/*void main(){
  //create object in the person class
  Person person1=Person();
  //set value in person class
  person1.name="Abu Rasel";
  person1.email="rasel@gmail.com";
  person1.address="dhaka,natun-bazar";
  //call display information method print person data
  person1.displayInformation();

  //again create object in person2 class
  Person person2=Person();
  person2.name="Rasel Ahmed";
  person2.email="ahmed@gmail.com";
  person2.address="Dhaka";
  //again call display information method/function for print value
  person2.displayInformation();



}


class Person{
  //decleare the variable

  String? name,email,address;
  //create method/function for print value
  void displayInformation(){
    print("My name is $name}");
    print("My email address $email");
    print("My current address $address");
    print("");
  }
}*/

//simple class and set data and print data
/*
void main() {
  //object create
  Person person1 = Person();

  //set value
  person1.name = "Abu Rasel";
  person1.email = "rasel@gmail.com";
  person1.address = "Dhaka badda natun-bazar";
  person1.phone = "01770995451";

  //print value
  print("My name is ${person1.name}");
  print("My email  address ${person1.email}");
  print("My Address ${person1.address}");
  print("My phone number ${person1.phone}");

  //person2 object create
  Person person2 = Person();
  person2.name = "Rakib";
  person2.email = "rakib@gmail.com";
  person2.address = "Dhaka";
  person2.phone = "01303228480";
  //second time print all info
  print(
      "My name is ${person2.name}. My email address ${person2.email}. My current address ${person2.address}. My phone number ${person2.phone}");
}
//create class
//this class also called model

class Person {
  String? name, email, phone, address;
}
*/
