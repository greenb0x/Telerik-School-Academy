using System;

namespace ReadAStringFromTheConsole
{
    class ReadAStringFromTheConsole
    {
        static void Main()
        {
            string str = Console.ReadLine();
            int maxLength = 20;

            if (str.Length <= maxLength)
            {
                Console.WriteLine(str.PadRight(maxLength, '*'));
            }
            else
            {
                Console.WriteLine("The lenght of the string must be less than 20.");
            }

        }
    }
}
