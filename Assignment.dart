
import 'dart:convert';
import 'dart:io';

void main(List<String> arguments) {

  // 1
  int sum = 0;
  for (int i = 1; i <= 10; i++) {
    print(i);
    sum = sum + i;
  }
  print("the sum is: $sum");

  // 2
  print("Enter a number: ");
  int number2 = int.parse(stdin.readLineSync());
  int sum2 = 0;

  for (int i = 1; i <= 10; i++){
    sum2 = number2 * i;
    print("$number2 * $i = $sum2");
  }

  //3
  print("Enter five numbers");
  int sum3 = 0;
  double average = 0;

  for(int i = 1; i <= 5; i++) {
    int numbers = int.parse(stdin.readLineSync());
    sum3 += numbers;
  }
  average = sum3 / 5;
  print("The sum is $sum3");
  print("The average is $average");


  //4

  print("Enter a number");
  int number4 = int.tryParse(stdin.readLineSync());
  int digit = 0;

  while (number4 > 0){
    digit++;
    number4 = number4 ~/ 10;
  }
  print("Number of digits: $digit");
}
