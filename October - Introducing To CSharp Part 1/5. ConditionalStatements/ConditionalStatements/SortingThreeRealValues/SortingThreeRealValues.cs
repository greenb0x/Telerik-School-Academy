using System;
class SortingThreeRealValues
{
    static void Main()
    {
        Console.WriteLine("Enter the first number: ");
        int FirstNumber = int.Parse(Console.ReadLine());
        Console.WriteLine("Enter the second number: ");
        int SecondNumber = int.Parse(Console.ReadLine());
        Console.WriteLine("Enter the third number: ");
        int ThirdNumber = int.Parse(Console.ReadLine());

        if (FirstNumber > SecondNumber)
        {
            if (SecondNumber > ThirdNumber)
            {
                Console.WriteLine("The order of the numbers is:");
                Console.WriteLine("{0}", FirstNumber);
                Console.WriteLine("{0}", SecondNumber);
                Console.WriteLine("{0}", ThirdNumber);
            }
            else
            {
                if (ThirdNumber > SecondNumber && ThirdNumber < FirstNumber)
                {
                    Console.WriteLine("The order of the numbers is:");
                    Console.WriteLine("{0}", FirstNumber);
                    Console.WriteLine("{0}", ThirdNumber);
                    Console.WriteLine("{0}", SecondNumber);
                }
                else
                {
                    Console.WriteLine("The order of the numbers is:");
                    Console.WriteLine("{0}", ThirdNumber);
                    Console.WriteLine("{0}", FirstNumber);
                    Console.WriteLine("{0}", SecondNumber);
                }
            }
        }
        else
        {
            if (SecondNumber > FirstNumber)
            {
                if (FirstNumber > ThirdNumber)
                {
                    Console.WriteLine("The order of the numbers is:");
                    Console.WriteLine("{0}", SecondNumber);
                    Console.WriteLine("{0}", FirstNumber);
                    Console.WriteLine("{0}", ThirdNumber);
                }
                else
                {
                   if (ThirdNumber > FirstNumber && ThirdNumber < SecondNumber)
                   {
                       Console.WriteLine("The order of the numbers is:");
                       Console.WriteLine("{0}", SecondNumber);
                       Console.WriteLine("{0}", ThirdNumber);
                       Console.WriteLine("{0}", FirstNumber);
                   }
                   else
                   {
                       Console.WriteLine("The order of the numbers is:");
                       Console.WriteLine("{0}", ThirdNumber);
                       Console.WriteLine("{0}", SecondNumber);
                       Console.WriteLine("{0}", FirstNumber);
                   }
                }
            }
        }
    }
}
