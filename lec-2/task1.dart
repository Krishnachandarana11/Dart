import 'dart:io';

void main() 
{
  List<String> states = [];


  stdout.write("Enter Number Of States: ");
  int x = int.parse(stdin.readLineSync()!);

  
  int i;
  for ( i = 1; i <= x; i++) 
  {
    stdout.write("Enter State $i: ");

    String name = stdin.readLineSync()!;
    states.add(name);
  }

  stdout.write("India States:");
  for (i = 0; i <x; i++) 
  {
    print(states[i]);
  }
}
