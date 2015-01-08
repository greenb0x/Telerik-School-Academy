using System;
using System.Linq;

class SortingStrings
{
    static void Main()
    {
        string[] input = new string[]
	    {
	        "Bulgaria",
	        "Rumania",
	        "Germany",
	        "USA",
	        "France",
            "Italia"
	    };
        Console.WriteLine("Original Array.\n");
        foreach (string country in input)
        {
            Console.WriteLine(country);
        }
        Console.WriteLine();
        Console.WriteLine("Sorted Array.\n");
        var sortedArray = from item in input
                          orderby item.Length
                          select item;

        foreach (string item in sortedArray)
        {
            Console.WriteLine(item);
        }
        Console.WriteLine();
    }
}