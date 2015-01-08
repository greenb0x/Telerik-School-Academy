using System;
using System.Text;

namespace StringsAndTextProcessing
{
    class StringsAndTextProcessing
    {
        public static string ReverseIt(string randomStr)
        {
            StringBuilder newStrBld = new StringBuilder();
            for (int i = randomStr.Length - 1; i >= 0; i--)
            {
                newStrBld.Append(randomStr[i]);
            }
            return newStrBld.ToString();
        }
        static void Main()
        {
            Console.Write("Enter a string: ");
            string randomString = Console.ReadLine();

            string reversed = ReverseIt(randomString);
            Console.WriteLine(reversed);
        }
    }
}
