using System;
class TrapezoidArea
{
    static void Main()
    {
        Console.WriteLine("Insert a:");
        int a = int.Parse(Console.ReadLine());

        Console.WriteLine("Insert b:");
        int b = int.Parse(Console.ReadLine());

        Console.WriteLine("Insert h:");
        int h = int.Parse(Console.ReadLine());

        Console.WriteLine("Area: ");
        Console.WriteLine((a + (b - a) / 2) * h);
    }
}