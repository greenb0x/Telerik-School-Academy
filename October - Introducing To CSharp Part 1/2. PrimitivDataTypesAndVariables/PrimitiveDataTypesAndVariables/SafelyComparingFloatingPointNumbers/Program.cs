using System;
class SafelyComparingFloatingPointNumbers
{
    static void Main()
    {
        float a = 3.000001f;
        float b = 3.000003f;
        float c = 5.00000001f;
        float d = 5.00000003f;
        bool compareFirst = (a == b);
        Console.WriteLine("Compare {0} and {1} -> {2}", a, b, compareFirst);
        bool compareSecond = (c == d);
        Console.WriteLine("Compare {0} and {1} -> {2}", c, d, compareSecond);
    }
}
