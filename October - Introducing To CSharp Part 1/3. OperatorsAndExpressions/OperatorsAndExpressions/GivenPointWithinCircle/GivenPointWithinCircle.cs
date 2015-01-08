using System;
class GivenPointWithinCircle
{
    static void Main()
    {
        Console.WriteLine("Pease enter the X coordinate: ");
        decimal x = decimal.Parse(Console.ReadLine());
        Console.WriteLine("Pease enter the Y coordinate: ");
        decimal y = decimal.Parse(Console.ReadLine());

        decimal radius = 5;
        bool result = x * x + y * y < radius * radius;

        Console.WriteLine();
        Console.WriteLine(result ? "They are within the circle" : "They are outside the circle");
    }
}