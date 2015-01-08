using System;
    class YouAfterTenYears
    {
        static void Main()
        {
            Console.WriteLine("Enter your age");
            int age = int.Parse(Console.ReadLine());
            int result = age + 10;
            {
                Console.WriteLine("Your age after 10 years will be: " + result + " years");
            }
        }
    }