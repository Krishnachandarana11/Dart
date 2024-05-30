void main() {
  
  List<List<int>> matrix1 = [
    [1, 2, 3],
    [4, 5, 6],
    [7, 8, 9],
  ];

  List<List<int>> matrix2 = [
    [9, 8, 7],
    [6, 5, 4],
    [3, 2, 1],
  ];

  
  List<List<int>> ResultMatrix = [
    [0, 0, 0],
    [0, 0, 0],
    [0, 0, 0],
  ];

  // Perform matrix addition
  for (int i = 0; i < 3; i++) 
  {
    for (int j = 0; j < 3; j++) 
    {
      ResultMatrix[i][j] = matrix1[i][j] + matrix2[i][j];
    }
  } 

  print("Final matrix is:");

  for (int i = 0; i < 3; i++) 
  {
    print(ResultMatrix[i]);
  }
}
