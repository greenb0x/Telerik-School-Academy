using System;
class IsPointInCircleAndOutOfRectangle
{
    static void Main()
    {

        Console.Write("Please enter X coordinate: ");
        decimal x = decimal.Parse(Console.ReadLine());

        Console.Write("Please enter Y coordinate: ");
        decimal y = decimal.Parse(Console.ReadLine());
        Console.WriteLine();

        bool result = (((x - 1) * (x - 1) + (y - 1) * (y - 1)) <= 9) && ((x < -1) || ((x >= -1) && ((y <= -1) || (y >= 1))));
        Console.WriteLine("The coordinates are inside the circle and out of the rectangular: {0}", result);
    }
}