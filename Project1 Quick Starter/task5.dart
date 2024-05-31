import 'dart:io';

void main() {
  List<List<int>> Matrix = 
  [
    [9, 8, 7],
    [4, 5, 6],
    [3, 2, 1]
  ];

  while (true) 
  {
    print("\nMenu:");
    print("Press 1 Sum Of all element");
    print("Press 2 Sum Of Specific Row");
    print("Press 3 Sum Of Specific Column");
    print("Press 4 Sum Of Diagonal Elements");
    print("Press 0 Exit");

    stdout.write("Enter your choice: ");
    int choice = int.parse(stdin.readLineSync()!);

    switch (choice) 
    {
      case 1:
        int sum = 0;

        for (int i = 0; i < Matrix.length; i++) 
        {
          for (int j = 0; j < Matrix[i].length; j++) 
          {
            sum+=Matrix[i][j];
          }
        }
        print("Sum Of Element: $sum");
        break;

      case 2:
        stdout.write("Enter Row Numbers : ");
        int row = int.parse(stdin.readLineSync()!);
        int sum = 0;
        for (int i = 0; i < Matrix[row].length; i++) 
        {
          sum+=Matrix[row][i];
        }
        print("Sum Of Row : $sum");
        break;

      case 3:
        stdout.write("Enter Column Number : ");
        int column = int.parse(stdin.readLineSync()!);
        int sum = 0;
        for (int i = 0; i < Matrix.length; i++) 
        {
          sum+=Matrix[i][column];
        }
        print("Sum Of Column : $sum");
        break;

      case 4:
        int sum = 0;
        for (int i = 0; i < Matrix.length; i++) 
        {
          sum+=Matrix[i][i];
        }
        print("Sum Of Diagonal Elements: $sum");
        break;

        case 0:
        {
          print("Exiting...");
          return;
        }

      default:
        print("Invalid Choice");
    }
  }
}

     
       
       
