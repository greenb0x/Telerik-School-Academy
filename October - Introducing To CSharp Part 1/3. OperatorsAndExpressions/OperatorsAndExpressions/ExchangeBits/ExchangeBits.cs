using System;
class ExchangeBits
{

    static void Main()
    {
        Console.Write("Enter number: ");
        uint number = uint.Parse(Console.ReadLine());

        Console.Write("The number binary representation is: ");
        Console.WriteLine(Convert.ToString(number, 2).PadLeft(32, '0'));
        Console.WriteLine();

        for (int i = 3; i < 6; i++)
        {
            if ((number >> i & 1U) != (number >> (i + 21) & 1U))
            {
                if ((number >> i & 1U) == 1)
                {
                    number = ~(1U << i) & number;
                    number = (1U << (i + 21)) | number;
                }
                else
                {
                    number = (1U << i) | number;
                    number = ~(1U << (i + 21)) & number;
                }
            }
        }
        Console.Write("After exchanges the result is: ");
        Console.WriteLine(Convert.ToString(number, 2).PadLeft(32, '0'));
    }
}