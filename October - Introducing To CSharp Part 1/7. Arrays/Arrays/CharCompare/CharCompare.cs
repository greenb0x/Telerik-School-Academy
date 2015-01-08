using System;
class CharCompare
{
    static void Main()
    {
        char[] firstArray = { 'a', 'b', 'c', 'd', 'e', 'f', 'r' };
        char[] secondArray = { 'b', 'a', 'c', 'd', 'e', 'f', 'r' };
        bool areLexiEqual = true;
        // to do len check
        if (firstArray.Length == secondArray.Length)
        {
            for (int i = 0; i < firstArray.Length; i++)
            {
                if (firstArray[i] != secondArray[i])
                {
                    areLexiEqual = false;
                }
            }
            Console.WriteLine(areLexiEqual);
        }
        else
        {
            areLexiEqual = false;
            Console.WriteLine(areLexiEqual);
        }

    }
}