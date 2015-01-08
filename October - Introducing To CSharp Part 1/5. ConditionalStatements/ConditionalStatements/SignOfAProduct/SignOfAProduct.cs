using System;
class SignOfAProduct
{
    static void Main()
    {
        Console.WriteLine("Enter the first number: ");
        int FirstNumber = int.Parse(Console.ReadLine());
        Console.WriteLine("Enter the second number: ");
        int SecondNumber = int.Parse(Console.ReadLine());
        Console.WriteLine("Enter the third number: ");
        int ThirdNumber = int.Parse(Console.ReadLine());

        if (FirstNumber < 0 && SecondNumber < 0 && ThirdNumber < 0)
        {
            Console.WriteLine("The sign is '-'");
        }
        else if (FirstNumber < 0 ^ SecondNumber < 0 ^ ThirdNumber < 0)
        {
            Console.WriteLine("The sign is '-'");
        }
        else
        {
            Console.WriteLine("The sign is '+'");
        }
    }
}
