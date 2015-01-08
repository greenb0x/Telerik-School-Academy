using System;
class ExchangeValuesOfTwoVariables
{
    static void Main()
    {
        Console.WriteLine("Enter the first variable: ");
        int FirstVariable = int.Parse(Console.ReadLine());
        Console.WriteLine("Enter the second variable: ");
        int SecondVariable = int.Parse(Console.ReadLine());

        if (FirstVariable > SecondVariable)
        {
            SecondVariable = FirstVariable;
        }
        Console.WriteLine("The greater number is: {0}", SecondVariable);
    }
}
