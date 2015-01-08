using System;
class SieveOfEratosthenes
{
    static void Main()
    {
        bool[] bigArr = new bool[10000000];
        for (int i = 0; i < bigArr.Length; i++)
        {
            bigArr[i] = true;
        }
        for (int i = 2; i < Math.Sqrt(bigArr.Length); i++)
        {
            if (bigArr[i])
            {
                for (int j = i * i; j < bigArr.Length; j = j + i)
                {
                    bigArr[j] = false;
                }
            }
        }

        for (int i = 0; i < bigArr.Length; i++)
        {
            if (bigArr[i])
            {
                Console.Write(i + " ");
            }
        }
    }
}