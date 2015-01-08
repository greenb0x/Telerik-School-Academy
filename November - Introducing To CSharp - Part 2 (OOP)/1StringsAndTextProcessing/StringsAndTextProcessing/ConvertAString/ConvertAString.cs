using System;
using System.Text;

namespace ConvertAString
{
    class ConvertAString
    {
        static string ConvertToUnicode(string str)
        {
            StringBuilder utf = new StringBuilder(str.Length * 6);

            foreach (char c in str)
                utf.AppendFormat("\\u{0:X4}", (int)c);

            return utf.ToString();
        }

        static void Main()
        {
            Console.WriteLine(ConvertToUnicode("Hi!"));
        }
    }
}
