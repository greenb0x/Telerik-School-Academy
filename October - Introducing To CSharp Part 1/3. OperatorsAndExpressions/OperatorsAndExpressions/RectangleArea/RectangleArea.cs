using System;
class RectangleArea
{
    static void Main()
    {
        Console.WriteLine("Insert rectangle’s WIDTH: ");
        int numberWidth = int.Parse(Console.ReadLine());

        Console.WriteLine("Insert rectangle’ HEIGHT: ");
        int numberHeight = int.Parse(Console.ReadLine());

        int resultArea = numberWidth * numberHeight;

        Console.WriteLine("Rectangle’s area is: {0}", resultArea);
    }
}