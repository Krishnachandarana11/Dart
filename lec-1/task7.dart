import 'dart:io';

void main() 
{

  stdout.write("Enter your first name: ");
  String firstName = stdin.readLineSync()!;

  
  stdout.write("Enter your last name: ");
  String lastName = stdin.readLineSync()!;

  
  String fullName = "$firstName $lastName";

  print("Your full name is: $fullName");
  
}
