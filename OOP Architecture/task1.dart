import 'dart:io';
int sumOfList({required List<int> numbers}) 
{
  int sum = 0;
  for (int i = 0; i < numbers.length; i++) 
  {
    sum += numbers[i];
  }
  return sum;
}
void main() {
  List<int> numbers = [1, 2, 3, 4, 5];
  int result = sumOfList(numbers: numbers);
  print("Sum of all elements: $result");
}
