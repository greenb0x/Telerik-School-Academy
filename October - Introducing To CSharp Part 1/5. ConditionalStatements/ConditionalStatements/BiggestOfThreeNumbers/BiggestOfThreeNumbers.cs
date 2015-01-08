using System;
class BiggestOfThreeNumbers
{
    static void Main()
    {
        Console.WriteLine("Enter the first number: ");
        int FirstNumber = int.Parse(Console.ReadLine());
        Console.WriteLine("Enter the second number: ");
        int SecondNumber = int.Parse(Console.ReadLine());
        Console.WriteLine("Enter the third number: ");
        int ThirdNumber = int.Parse(Console.ReadLine());

        if (FirstNumber > SecondNumber && FirstNumber > ThirdNumber)
        {
            Console.WriteLine("The biggest number is: {0}", FirstNumber);
        }
        else
        {
            if (SecondNumber > ThirdNumber)
            {
                Console.WriteLine("The biggest number is: {0}", SecondNumber);
            }
            else
            {
                Console.WriteLine("The biggest number is: {0}", ThirdNumber);
            }
        }
    }
}
