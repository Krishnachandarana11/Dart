import 'dart:io';


void main()
{
  stdout.write("Enter Number:- ");
  int k = int.parse(stdin.readLineSync()!);


  List<int> num = [];

  List<String> hello = [];

  int i;
  for(i=0;i<k;i++)
    {
      num.add(int.parse(stdin.readLineSync()!));
    }

  for(i=0;i<k;i++)
  {
    hello.add("${num[i]} Hello");
  }

  print(hello);

}