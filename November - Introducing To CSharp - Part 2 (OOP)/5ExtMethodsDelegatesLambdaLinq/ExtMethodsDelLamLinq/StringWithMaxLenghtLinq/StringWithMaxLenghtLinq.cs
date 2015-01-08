using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace StringWithMaxLenghtLinq
{
    class StringWithMaxLenghtLinq
    {
        static void Main()
        {
            var array = new string[] { "Telerik", "Academy", "LINQ", "System", "Collections", "Threading" };
            string maxLength = array.OrderByDescending(x => x.Length).First();

            Console.WriteLine("The string with max length is: " + maxLength);
        }
    }
}