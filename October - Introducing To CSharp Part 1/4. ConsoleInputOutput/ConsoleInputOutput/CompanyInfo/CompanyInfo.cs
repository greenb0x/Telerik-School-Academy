using System;
class CompanyInfo
{
    static void Main()
    {
        Console.WriteLine("Enter company name: ");
        string CompanyName = Console.ReadLine();
        Console.WriteLine("Enter company address: ");
        string CompanyAddress = Console.ReadLine();
        Console.WriteLine("Enter company phone number: ");
        string CompanyNumber = Console.ReadLine();
        Console.WriteLine("Enter company fax: ");
        string CompanyFax = Console.ReadLine();
        Console.WriteLine("Enter company website: ");
        string CompanySite = Console.ReadLine();
        Console.WriteLine("Enter the first name of the manager: ");
        string ManagerFirstName = Console.ReadLine();
        Console.WriteLine("Enter the last name of the manager: ");
        string ManagerLastName = Console.ReadLine();
        Console.WriteLine("Enter manager age: ");
        string ManagerAge = Console.ReadLine();
        Console.WriteLine("Enter manager phone number: ");
        string ManagerPhone = Console.ReadLine();
        Console.WriteLine();
        Console.WriteLine("Company Information");
        Console.WriteLine("The name of the company is: {0}", CompanyName);
        Console.WriteLine("The addres of the company is: {0}", CompanyAddress);
        Console.WriteLine("The phone number of the company is: {0}", CompanyNumber);
        Console.WriteLine("The fax of the company is: {0}", CompanyFax);
        Console.WriteLine("The website of the company is: {0}", CompanySite);
        Console.WriteLine("The name of the manager is: {0}", ManagerFirstName + ManagerLastName);
        Console.WriteLine("The manager is {0} years old", ManagerAge);
        Console.WriteLine("The phone number of the manager is: {0}", ManagerPhone);
    }
}
