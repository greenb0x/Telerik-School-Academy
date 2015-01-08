﻿using System;

class BinarySearch
{
    static void Main()
    {
        int[] array = { 10, 20, 30, 40, 50, 60, 70, 80 };
        int k = 5;
        Console.WriteLine();
        Array.Sort(array);
        int pos = Array.BinarySearch(array, k);
        if (pos < 0)
        {
            pos = ~pos - 1;
        }
        if (pos < 0)
        {
            Console.WriteLine("There is no number in the array which is smaller or equal to K.\n");
        }
        else
        {
            Console.WriteLine(array[pos]);
        }

    }
}