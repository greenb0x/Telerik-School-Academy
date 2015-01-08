using System;
class PrintLetterIndex
{
    static void Main()
    {
        char[] alphabet = new char[26];
        for (int i = 0; i < alphabet.Length; i++)
        {
            alphabet[i] = (char)('a' + i);
        }
        Console.Write("Enter word: ");
        string word = Console.ReadLine().ToLower();
        foreach (char letter in word)
        {
            for (int index = 0; index < alphabet.Length; index++)
            {
                if (letter == alphabet[index])
                {
                    Console.WriteLine("The index of '{0}' is {1}", letter, index);
                }
            }
        }
    }
}