import 'dart:io';

void main() {
  List<List<int>> Matrix = 
  [
    [3, 2, 1],
    [4, 5, 6],
    [9, 8, 7]
  ];

  while (true) 
  {
    print("\nMenu:");
    print("1. Sum Of all element");
    print("2. Sum Of Specific Row");
    print("3. Sum Of Specific Column");
    print("4. Sum Of Siagonal Elements");
    print("0. Exit");

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
            sum += Matrix[i][j];
          }
        }
        print("Sum of all elements: $sum");
        break;

      case 2:
        stdout.write("Enter row number (0-2): ");
        int row = int.parse(stdin.readLineSync()!);
        int sum = 0;
        for (int i = 0; i < Matrix[row].length; i++) 
        {
          sum += Matrix[row][i];
        }
        print("Sum of row $row: $sum");
        break;

      case 3:
        stdout.write("Enter column number (0-2): ");
        int column = int.parse(stdin.readLineSync()!);
        int sum = 0;
        for (int i = 0; i < Matrix.length; i++) 
        {
          sum += Matrix[i][column];
        }
        print("Sum of column $column: $sum");
        break;

      case 4:
        int sum = 0;
        for (int i = 0; i < Matrix.length; i++) 
        {
          sum += Matrix[i][i];
        }
        print("Sum of diagonal elements: $sum");
        break;

        case 0:
        {
          print("Exiting...");
          return;
        }

      default:
        print("Invalid choice!");
    }
  }
}
