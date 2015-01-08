using System;
class MultipleElementsByFive
{
    static void Main()
    {
        int[] myIntArray = new int[20];

        for (int index = 0; index < myIntArray.Length; index++)
        {
            myIntArray[index] = 5 * index;
            Console.WriteLine(myIntArray[index]);
        }
    }
}