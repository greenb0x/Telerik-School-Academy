using System;
using System.Text.RegularExpressions;

namespace ReplaceConsecutiveLetters
{
    class ReplaceConsecutiveLetters
    {
        static void Main()
        {
            string str = "aaaaabbbbbcdddeeeedssaa";

            Console.WriteLine(Regex.Replace(str, @"(\w)\1+", "$1"));
        }
    }
}
