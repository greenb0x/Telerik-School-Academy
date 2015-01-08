using System;
class ExtractIntGivenBit
{
    static void Main()
    {
        Console.WriteLine("Insert number here: ");
        int numberI = int.Parse(Console.ReadLine());

        Console.WriteLine("Insert bit number here: ");
        int bitNumber = int.Parse(Console.ReadLine());

        int mask = 1 << bitNumber;
        int result = mask & numberI;
        result = result >> bitNumber;

        Console.WriteLine("Value: {0}", result);
    }
}