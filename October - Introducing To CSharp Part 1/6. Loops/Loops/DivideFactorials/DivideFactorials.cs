﻿using System;
class DivideFactorials
{
    static void Main()
    {
        Console.WriteLine("Enter a value for N: ");
        int n = int.Parse(Console.ReadLine());
        Console.WriteLine("Enter a value for K (1 < K < N)");
        int k = int.Parse(Console.ReadLine());
        double nFactorial = 1;
        double kFactorial = 1;
        for (int i = n; i > 0; i--)
        {
            nFactorial *= i;
        }
        for (int j = k; j > 0; j--)
        {
            kFactorial *= j;
        }
        double result = nFactorial / kFactorial;
        Console.WriteLine("N!/K! = {0}", result);
    }
}
