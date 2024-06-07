import 'dart:io';

void Addition(int a,int b)
{
  print("Addition is:-${a+b}");
}
void Substraction(int a,int b)
{
  print("Substraction is:-${a-b}");
}
void Multiplication(int a,int b)
{
  print("Multiplication is:-${a*b}");
}
void Division(int a,int b)
{
  print("Division is:-${a/b}");
}

void main()
{
  while(true)
  {
    print("press 1 for Addition");
    print("press 2 for Substraction");
    print("press 3 for Multiplication");
    print("press 4 for Division");
    print("Enter Your Choice");
    int Choice=int.parse(stdin.readLineSync()!);

    print("Enter the first number:");
    int num1 = int.parse(stdin.readLineSync()!);
    print("Enter the second number:");
    int num2 = int.parse(stdin.readLineSync()!);

switch (Choice) 
{
      case 1:
        Addition(num1, num2);
        break;
      case 2:
        Substraction(num1, num2);
        break;
      case 3:
        Multiplication(num1, num2);
        break;
      case 4:
        Division(num1, num2);
        break;
      default:
        print("Invalid choice. Please try again.");
    }
    print(""); 
  }
}
    

  
  




