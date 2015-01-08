using System;
class MultiplyFactorials
{
    static void Main()
    {
        Console.WriteLine("Enter a value for N: ");
        int n = int.Parse(Console.ReadLine());
        Console.WriteLine("Enter a value for K (1 < N < K)");
        int k = int.Parse(Console.ReadLine());
        int differenceNK = n - k;
        double nFactorial = 1;
        double kFactorial = 1;
        double differenceNKFactorial = 1;
        for (int i = n; i > 0; i--)
        {
            nFactorial *= i;
        }
        for (int i = k; i > 0; i--)
        {
            kFactorial *= i;
        }
        for (int j = differenceNK; j > 0; j--)
        {
            differenceNKFactorial *= j;
        }
        double result = (nFactorial * kFactorial) / differenceNKFactorial;
        Console.WriteLine("N!*K!/(N-K)!= {0}" , result);
    }
}
