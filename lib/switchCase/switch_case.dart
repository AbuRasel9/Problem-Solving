import 'dart:io';

void main(){
  print("Enter Api status :");
  int apiStatus=int.parse(stdin.readLineSync()!);

  apiStatusHandler(apiStatus);

}

/*
Problem 1: API Status Handler

status = 404

API response অনুযায়ী message দেখাও।

Backend থেকে যেসব status code আসে, সেগুলো UI message এ convert করতে হয়। যেমন 200 = success, 404 = not found।
 */
void apiStatusHandler(int apiStatus){
  switch( apiStatus){
    case  200:
      print("Success");
      break;
    case 201:
      print("Ok");
      break;

    case 204:
      print("No Content");
      break;

    case 301 :
      print("Moved Permanently");
      break;
    case 400:
      print("Bad Request");
      break;
    case 401:
      print("Unauthorized");
      break;
      default:
        print("Invalid api status");


  }

}