using System;
class FibonacciSequence
{
    static void Main()
    {
        int numberOne = 0;
        int numberTwo = 1;
        int sum = 1;
        while (numberOne < 600)
        {
            sum = numberOne + numberTwo;
            numberOne = numberTwo;
            numberTwo = sum;
            Console.WriteLine(numberTwo);
        }
    }
}
