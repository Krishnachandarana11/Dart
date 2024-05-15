import 'dart:io';

void main() {
  int num1, num2;
  String operation;

  
  print("Enter first number:");
  num1 = int.parse(stdin.readLineSync()!);

  print("Enter second number:");
  num2 = int.parse(stdin.readLineSync()!);

  print("Enter operation (+, -, *, /):");
  operation = stdin.readLineSync()!;

  
   int result;

  switch (operation) 
  {
    case '+':
      result = num1 + num2;
      break;
    case '-':
      result = num1 - num2;
      break;
    case '*':
      result = num1 * num2;
      break;
    default:
      print("Invalid operation");
      return;
  }

  print("Result: $result");

}
