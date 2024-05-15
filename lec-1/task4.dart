import 'dart:io';

void main()
{
  print("Enter the value of i=");
  int number=int.parse(stdin.readLineSync()!);

  for (int i = 1; i <= 10; i++)
  {
    print('$number * $i = ${number * i}');
  }
}
