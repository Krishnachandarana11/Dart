import 'dart:io';
import 'dart:math';

void main() 
{
  Map<int,Map<String, dynamic>> employees = {};

  for (int i = 1; i <= 3; i++) 
  {
    print('Enter details for Employee $i:');

    stdout.write('Id: ');
    String id = stdin.readLineSync()!;

    stdout.write('Name: ');
    String name = stdin.readLineSync()!;

    stdout.write('Age: ');
    int age = int.parse(stdin.readLineSync()!);

    stdout.write('Salary: ');
    double salary = double.parse(stdin.readLineSync()!);

    Map<String, dynamic> employeeInformation = {
      'id' : id,
      'name': name,
      'age': age,
      'salary': salary,
    };

    employees[i] = employeeInformation;
  }

  print('\nTotal employees information:');
  for (int i = 1; i <= employees.length; i++) {
    print('Employee $i:');
    print('Id: ${employees[i]!['id']}');
    print('Name: ${employees[i]!['name']}');
    print('Age: ${employees[i]!['age']}');
    print('Salary: ${employees[i]!['salary']}');
  }
}