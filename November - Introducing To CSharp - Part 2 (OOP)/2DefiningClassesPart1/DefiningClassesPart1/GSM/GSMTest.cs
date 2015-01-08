using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MobilePhoneDevice
{
    class GSMTest
    {
        static void Main()
        {
            GSM[] array = new GSM[3];

            GSM firstGSM = new GSM("Galaxy S 4", "Samsung", 800.00, "Misho");
            array[0] = firstGSM;

            GSM secondGSM = new GSM("Xperia", "Sony", 700.01, "Ivan");
            array[1] = secondGSM;

            GSM thirdGSM = new GSM("Optimus", "LG", 500.21, "Daniel");
            array[2] = thirdGSM;

            //Print information about the GSMs in the array
            for (int i = 0; i < array.Length; i++)
            {
                array[i].ToString();
            }

            //Print information about the static property IPhone4S
            GSM.IPhone4S.ToString();

            //CallHistory test
            GSM fourthGSM = new GSM("Desire 500", "HTC", 1111, "Maria");

            //Add calls and print
            Console.WriteLine("Add some calls and print...");
            fourthGSM.AddCalls(DateTime.Now, "088088311", 55);
            fourthGSM.AddCalls(DateTime.Now, "088088088", 94);
            fourthGSM.AddCalls(DateTime.Now, "088111221", 33);
            fourthGSM.PrintCalls();

            //Delete call and print
            Console.WriteLine("Delete call and print... ");
            fourthGSM.DeleteCalls(55);
            fourthGSM.PrintCalls();

            //Calculate total price
            fourthGSM.CalculateTotalPrice(0.37);

            //Clear calls and print
            fourthGSM.ClearCalls();
            fourthGSM.PrintCalls();
        }
    }
}