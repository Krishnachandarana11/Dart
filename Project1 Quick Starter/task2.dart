void main()
{
    List<int> number =[1,2,3,4,5,6,7,8,9,10];

  int largestnumber = number[0];

   for(int i=0;i<number.length;i++)
    {
        if(number[i]>largestnumber)
        {
           largestnumber = number[i];
        }
    }  

    print("$largestnumber");
}
