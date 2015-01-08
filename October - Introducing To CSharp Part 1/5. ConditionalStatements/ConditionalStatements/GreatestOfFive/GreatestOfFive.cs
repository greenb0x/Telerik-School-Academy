using System;
class GreatestOfFive
{
    static void Main()
    {
        Console.WriteLine("Enter the first number:");
        int FirstNumber = int.Parse(Console.ReadLine());
        Console.WriteLine("Enter the second number:");
        int SecondNumber = int.Parse(Console.ReadLine());
        Console.WriteLine("Enter the third number:");
        int ThirdNumber = int.Parse(Console.ReadLine());
        Console.WriteLine("Enter the fourth number:");
        int FourthNumber = int.Parse(Console.ReadLine());
        Console.WriteLine("Enter the fifth number:");
        int FifthNumber = int.Parse(Console.ReadLine());
        if (FirstNumber > SecondNumber && FirstNumber > ThirdNumber && FirstNumber > FourthNumber && FirstNumber > FifthNumber)
        {
            Console.WriteLine("The greatest number is: {0}", FirstNumber);
        }
        else if (SecondNumber > FirstNumber && SecondNumber > ThirdNumber && SecondNumber > FourthNumber && SecondNumber > FifthNumber)
        {
            Console.WriteLine("The greatest number is: {0}", SecondNumber);
        }
        else if (ThirdNumber > FirstNumber && ThirdNumber > SecondNumber && ThirdNumber > FourthNumber && ThirdNumber > FifthNumber)
        {
            Console.WriteLine("The greatest number is: {0}", ThirdNumber);
        }
        else if (FourthNumber > FirstNumber && FourthNumber > SecondNumber && FourthNumber > ThirdNumber && FourthNumber > FifthNumber)
        {
            Console.WriteLine("The greatest number is: {0}", FourthNumber);
        }
        else
        {
            Console.WriteLine("The greatest number is: {0}", FifthNumber);
        }
    }
}
