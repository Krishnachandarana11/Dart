import 'dart:io';

void main() {
  String num="23"; 
  try 
  {
    int number = int.parse(num);
    print('You entered the number: $number');
  } on FormatException catch (val) 
  {
    print('Error: $val. Please enter a valid number.');
  } finally
  {
    print('Execution completed...Thanks');
  }
}