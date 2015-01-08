using System;
class ChangeNBit
{
    static void Main()
    {
        Console.WriteLine("Insert number here: ");
        int number = int.Parse(Console.ReadLine());

        Console.WriteLine("Insert value here (0 or 1): ");
        int value = int.Parse(Console.ReadLine());

        Console.WriteLine("Insert position here: ");
        int position = int.Parse(Console.ReadLine());

        if (value == 0)
        {
            int mask0 = ~(1 << position);
            int result0 = mask0 & number;

            Console.WriteLine(result0);
        }
        else if (value == 1)
        {
            int mask1 = 1 << position;
            int result1 = number | mask1;

            Console.WriteLine();
            Console.WriteLine(result1);
            Console.WriteLine();
            Console.WriteLine(Convert.ToString(result1, 2)); //display int as a binary number
        }
        else
        {
            Console.WriteLine("Error!");
        }
    }
}