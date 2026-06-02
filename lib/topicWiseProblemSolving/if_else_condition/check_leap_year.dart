
import 'dart:io';

void main(){
  //leap year check function
  // checkLeapYear();
  // //electricity bill
  // electricityBill(300);
  //electricity bil calcualation
  // electricityBillCalculation(320);
//cash withdraw form atm
// atmWithdrawal(1000, 100);
  atmWithdrawalCalculation(10000, 50000);
}

// Problem 1: Leap Year Check

void checkLeapYear(){

  print("Enter Year: ");
  int year=int.parse(stdin.readLineSync()!);


  if(year%4==0 && year%100!=0){
    print("$year is leap year");
  }else{
    print("$year is not leap year");
  }

  //Problem 4: Triangle Valid কিনা
  print("Enter triangle side a value: ");
  double sideA=double.parse(stdin.readLineSync()!);
  print("Enter triangle side b value: ");
  double sideB=double.parse(stdin.readLineSync()!);
  print("Enter triancle side c value: ");
  double sideC=double.parse(stdin.readLineSync()!);

  if(((sideA+sideB)>sideC) && ((sideA+sideC)>sideB) && ((sideB+sideC)>sideA)){
    print("The triangle is valid");
  }else {
    print("The triangle are not valid");
  }
}
/*
Problem 5: Electricity Bill Slab
Question

Units = 350

Rule:

≤100 → 5 টাকা
≤300 → 8 টাকা

300 → 10 টাকা
 */

electricityBill(double totalUnit){
  double totalTk=1;
  if(totalUnit<=100){
    totalTk =totalUnit*5;
  }else if(totalUnit>100 && totalUnit<=300){

    totalTk =totalUnit*8;

  }else if(totalUnit>300){

    totalTk =totalUnit*10;
  }
  print("my electricity total unit$totalUnit and total tk $totalTk");


}
//electricity bill calculation
electricityBillCalculation(double totalUnit){
  double totalTk=1;
  if(totalUnit<=100){
    totalTk=totalUnit*5;


  }else if(totalUnit>100 && totalUnit<=200){
    totalTk=(100*5)+((totalUnit-100)*8);
  }else if(totalUnit>200 && totalUnit<=300){
    totalTk=(100*5)+(100*8)+((totalUnit-200)*10);
  }else{
    totalTk=(100*5)+(100*8)+(100*10)+((totalUnit-300)*11);
  }
  print("my meter unit $totalUnit and bill $totalTk");
}


/*
Problem 6: ATM Withdrawal
Question

Balance = 12000

Withdraw = 14000

যদি balance কম হয় transaction reject করো।
 */

void atmWithdrawal(double cashWithdrawalAmount,double balance){
      if(cashWithdrawalAmount>balance){
        print("Sorry you cannot withdraw tk .Don't have enough balance in your account. your cash withdrawal amount: $cashWithdrawalAmount and your balance $balance");
      }else{
        print("Please wait transaction is ready please take tk $cashWithdrawalAmount");
      }


}
void atmWithdrawalCalculation(double withdralAmount,double balance){
  if(withdralAmount<0){
    print("please enter correct amount. you cannot withdraw amount less than 0");
  }else if(withdralAmount<500){
    print("You cannot withdraw money less than 500");
  }else if((withdralAmount%500!=0)){
    print("Transaction Failed: Please enter an amount that is a multiple of 500 (e.g., 500, 1000, 1500, 10000).");
  }
  else if(withdralAmount>balance){
    print("Don't have enough balance in your account.your current balance $balance");
  }  else {
    print("Please wait... Processing your transaction.");
    print("Success! Please take your cash: $withdralAmount TK.");
    print("Remaining Balance: ${balance - withdralAmount} TK.");
  }
}