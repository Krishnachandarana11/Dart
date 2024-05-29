import 'dart:io';

void main() {
  Map<int, Map<String, dynamic>> employees = {};
  List<Map<String, dynamic>> allEmployeeDetails = [];

  for (int i = 1; i <= 3; i++) {
    print('\n Enter details for employee $i:');

    stdout.write('Name: ');
    String name = stdin.readLineSync()!;

    stdout.write('Age: ');
    int age = int.parse(stdin.readLineSync()!);

    stdout.write('Salary: ');
    double salary = double.parse(stdin.readLineSync()!);

    Map<String, dynamic> employeeDetails = {
      'name': name,
      'age': age,
      'salary': salary,
    };

    employees[i] = employeeDetails;
    allEmployeeDetails.add(employeeDetails);
  }

  print('\nAll employee details:');

  for (int i = 1; i <= employees.length; i++) {
    print('Employee $i:');
    print('Name: ${employees[i]!['name']}');
    print('Age: ${employees[i]!['age']}');
    print('Salary: ${employees[i]!['salary']}');
  }

  print('\nAll employee details in a list:');
  print(allEmployeeDetails);
}