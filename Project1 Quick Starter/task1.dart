import 'dart:io';

void main()
{
  List<int> number = [24, -6, 65, 45, 0, -10, 7];

  List<int> negativenumber = [];

  for (int i = 0; i < number.length; i++) 
  {
    if (number[i] < 0)
    {
      negativenumber.add(number[i]);
    }
  }
  print('Negative elements stored in the list: $negativenumber');
}