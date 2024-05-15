import 'dart:io';

void main() {
  // Prompting the user to enter the number
  stdout.write("Enter a number: ");
  double number = double.parse(stdin.readLineSync()!);

  // Calculating the cube
  double cube = number * number * number;

  // Displaying the cube of the number
  print("Cube of $number is: $cube");
}
