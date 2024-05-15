import 'dart:io';

void main() 
{
  
  stdout.write("Enter principal amount: ");
  double p = double.parse(stdin.readLineSync()!);

  stdout.write("Enter rate of interest: ");
  double r = double.parse(stdin.readLineSync()!);

  stdout.write("Enter time period (in years): ");
  double t = double.parse(stdin.readLineSync()!);

  
  double simpleInterest = (p * r * t) / 100;

  
  print("Simple Interest: $simpleInterest");


}
